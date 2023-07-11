# just in time notes for share

# WIFI on S3 Linux - your wireless connect 

#jcmvbkbc #esp32s3 #linux #esp32 S3 port get wifi step by step 

Will it work? Will it connect? Let's this find out 

3..2..1 here we go:

( long toure starts now ...and will be -medial- logged here by push)
- started CET 20:00 11 July 2023

The goal will be: - runing wifi network driver 

We use the [esp-hosted](https://github.com/espressif/esp-hosted) repo from espressif for this purpose. 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c464319a-b0f2-4156-ac4a-21e4d12b835f)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a7c6b0ce-67a2-4640-b937-2c0764197127)


# prepair

 - initial this step side on git hub
 - if not done yet you need to [build your toolchain](https://gist.github.com/jcmvbkbc/316e6da728021c8ff670a24e674a35e6)
   - autoconf steps
   - dynconfig steps
   - toolchain steps
   - wait for the next step kernel and rootfs, we need config things
