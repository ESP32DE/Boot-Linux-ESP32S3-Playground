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
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/02cf94f8-72db-45ca-b080-66241d86b059)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7ad385ee-c68f-4acd-a666-09475681d91a)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d37c4d4a-8724-4604-9370-9542c0c5a77c)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/aeaf849f-5e0f-4769-9175-80daeea39c79)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c0cfaf0c-a10b-4620-bf2e-95d80a17c6e2)

   - for the next step kernel and rootfs, we need config things
      - we use the basic install from buildroot and edit the right things in a second step for the wifi supported linux
      this can be an option for you if you want use your right installed buildroot 
      - or
      - we edit the things on the fly on install - we go here for this way and save the edit config files to provide this for other people which want comfortable install way
      - let's do it
    - 
