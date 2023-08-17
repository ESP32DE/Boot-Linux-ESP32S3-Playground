# just in time notes for share

# WIFI on S3 Linux - your wireless connect 

#esp32s3 #linux #esp32 S3 port get wifi step by step 

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

    # buildroot (fresh)
   we use again the amazing script from jcmvbkbc
   - `git clone https://github.com/jcmvbkbc/buildroot -b xtensa-2023.02-fdpic`
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/eaa0c18d-7c58-465e-b37a-b4d9a2e883da)
   - ** to do: links ** 
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3705f102-2975-4f39-99db-6f5ad4b9585b)
   - and we use again the amazing script parts
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/9603a927-5fb5-4afd-b567-a8335ebff670)
   - we can check all with the menuconfig
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/cfa1cba2-a45c-488e-a354-e434b6ae6a90)
   - check your setup
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/76030cce-b27d-44e0-839d-4afec8f4485e)
   - should work ( note can be that we change the name esp32s3wifi back to esp32s3 but for this test we use specific "wifi" config file
   - now we start the build
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5d7fa58c-883f-4f16-92fa-ee1b2b10a2a4)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e855f3af-4a33-4411-b648-90f56b54b883)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/b7c4e15c-7141-4b31-952e-a3e042f4ef41)
   - big moment ..the checkout..
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/b78a1f23-aec4-4e6d-9a07-747a6da9b81c)
   - .... how cool is that - it's working - just for you! there is no repeat - jump on this train :)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/94a9098e-749d-45be-bbab-fe081ab132f8)
   - all here - but we set up "net" later for this first try - we go on linux kernel and rootfs basics that you can do by self
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/262c3421-60e2-4383-a5c4-c29f0708cee3)
   - ..and...
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/cda33dc6-2c14-444f-8f20-fe5aa52eddc9)
   - ..done! we check..
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/fe2f8de4-b1b4-4747-b41f-4673d11f6868)
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/612c364e-2b13-49a9-8471-c2c7f762e6a4)
   - ..your linux and root file system is ready :) how cool is that !
   - next step
   - ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/be319a4c-4ec6-4483-9a19-5588942a1a1d)
   - ** to do links **
   - ..we have again more possibles..and must take the choice:
   - let me tell you: we can wait until all is same version level and up2date or
     - we can go today and we use the espressif's amazing [ESP-HOSTED](https://github.com/espressif/esp-hosted)
     - use the linked ESP-IDF as a component for the network driver - hoo hoo - yes - you read right at this time in July 12 2023 :)
       - we will use feat ESP-IDF as a componnet in the master ESP-IDF and switch back to V4.4  - how crazy cool is that -
       - do not share wifi from or to other device - we share the mem on the same ESP32-S3 hardware owns WIFI to him
       - HOW COOL IS THAT!?"
       - ** push it to the limit - never stop learning!
       - short pause here - emotion are high you know - ... partytime mid july - the best ever at least!
       - ( note this emotion bla bla will edit later - but for now you should know - here we are soooooo on fire to this theme *LoL*
   - * push *
     * prepairing steps for the bootloader and network driver setup and hardware - * codemarathon *
    
     # here you are


     [catch your wifi for your s3 linux port !](https://gist.github.com/jcmvbkbc/316e6da728021c8ff670a24e674a35e6)
     
     [setup your wifi port](http://wiki.osll.ru/doku.php/etc:users:jcmvbkbc:linux-xtensa:esp32s3wifi)






 



   - 




