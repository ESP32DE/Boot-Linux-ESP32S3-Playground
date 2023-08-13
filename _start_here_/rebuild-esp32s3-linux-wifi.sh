#! /bin/bash -x

SET_BAUDRATE='-b 2000000'

if [ ! -d autoconf-2.71/root/bin ] ; then
	wget https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.xz
	tar -xf autoconf-2.71.tar.xz
	pushd autoconf-2.71
	./configure --prefix=`pwd`/root
	make && make install
	popd
fi
export PATH=`pwd`/autoconf-2.71/root/bin:$PATH
rm -rf build
mkdir build
cd build

#
# dynconfig
#
git clone https://github.com/jcmvbkbc/xtensa-dynconfig -b original
git clone https://github.com/jcmvbkbc/config-esp32s3 esp32s3
make -C xtensa-dynconfig ORIG=1 CONF_DIR=`pwd` esp32s3.so
export XTENSA_GNU_CONFIG=`pwd`/xtensa-dynconfig/esp32s3.so

#
# toolchain
#
git clone https://github.com/jcmvbkbc/crosstool-NG.git -b xtensa-fdpic
pushd crosstool-NG
./bootstrap && ./configure --enable-local && make
./ct-ng xtensa-esp32s3-linux-uclibcfdpic
CT_PREFIX=`pwd`/builds nice ./ct-ng build
popd
[ -e crosstool-NG/builds/xtensa-esp32s3-linux-uclibcfdpic/bin/xtensa-esp32s3-linux-uclibcfdpic-gcc ] || exit 1

#
# kernel and rootfs
#
git clone https://github.com/jcmvbkbc/buildroot -b xtensa-2023.02-fdpic
nice make -C buildroot O=`pwd`/build-xtensa-2023.02-fdpic-esp32s3 esp32s3wifi_defconfig
buildroot/utils/config --file build-xtensa-2023.02-fdpic-esp32s3/.config --set-str TOOLCHAIN_EXTERNAL_PATH `pwd`/crosstool-NG/builds/xtensa-esp32s3-linux-uclibcfdpic
buildroot/utils/config --file build-xtensa-2023.02-fdpic-esp32s3/.config --set-str TOOLCHAIN_EXTERNAL_PREFIX '$(ARCH)-esp32s3-linux-uclibcfdpic'
buildroot/utils/config --file build-xtensa-2023.02-fdpic-esp32s3/.config --set-str TOOLCHAIN_EXTERNAL_CUSTOM_PREFIX '$(ARCH)-esp32s3-linux-uclibcfdpic'
nice make -C buildroot O=`pwd`/build-xtensa-2023.02-fdpic-esp32s3
[ -f build-xtensa-2023.02-fdpic-esp32s3/images/xipImage -a -f build-xtensa-2023.02-fdpic-esp32s3/images/rootfs.cramfs ] || exit 1

#
# bootloader
#
git clone https://github.com/jcmvbkbc/esp-hosted -b shmem
pushd esp-hosted/esp_hosted_ng/esp/esp_driver
cmake .
cd esp-idf
. export.sh
cd ../network_adapter
idf.py set-target esp32s3
cp sdkconfig.defaults.esp32s3 sdkconfig
idf.py build
read -p 'ready to flash... press enter'
while ! idf.py $SET_BAUDRATE flash ; do
	read -p 'failure... press enter to try again'
done
popd

#
# flash
#
parttool.py $SET_BAUDRATE write_partition --partition-name linux  --input build-xtensa-2023.02-fdpic-esp32s3/images/xipImage
parttool.py $SET_BAUDRATE write_partition --partition-name rootfs --input build-xtensa-2023.02-fdpic-esp32s3/images/rootfs.cramfs