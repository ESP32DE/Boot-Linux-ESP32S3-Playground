to do: upload

# 25. Aug 2023

- build things new and different from scratch
- [get 16 MB PSRAM working](https://twitter.com/eMbeddedHome/status/1695136051956687323) in the Linux Port for Xtensa MCU ESP32 S3
- optimize linux kernel for IoT RAM also eMbedded System
- optimize boot time
- used engineering modul "ESP32-S3-WoWZa-N32R16"

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/81c834e2-9802-464c-9d09-d8951ff13195)


# 16. Aug 2023
- first "hello-world" steps x-programming
- left Ubuntu 22.04 || right  S3Linux  same test code :)
- Next step: find refresh bug

https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/424bdf07-cdff-47e6-a064-6218cbd1620c

# 15. Aug 2023

in da house:
- 128  Mbit PSRAM
- 256  Mbit PSRAM
- 512  Mbit PSRAM
- 1024 Mbit PSRAM ( in the delivery ) 

we [start with 128 Mbit PSRAM](https://twitter.com/eMbeddedHome/status/1691314140227223552) in the Linux Port and go step up to 1G  

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/76dd6b6b-af96-463d-9a26-e02865743e28)


# 10. Aug 2023
- Remote Build by ESP32-S3 SSH Client which runs #jcmvbkbc #esp32s3 #linux #esp32 S3 port #WoWZa!
- ESP32-S3 runs #jcmvbkbc #esp32s3 #linux #esp32 S3 port which has also wifi and SSH support.
- on the ESP32-S3 also runs native "posix" micropython and LUA ..
- we connect from a PC by an SSH Client the ESP32-S3 (150) which runs a SSH Server.
- the ESP32-S3 is also connected over wifi to the internet
- we connect on ESP32-S3 ssh client internet timeserver and update local time on ESP32-S3.
- we connect then cloud and mount the cloud to the ESP32-S3 as a shared folder which has  100GB space .
- we serve to the cloud developer folder and cat the hi.c file.
- we connect also a second putty ssh connection to the ESP32-S3 ssh server.
- then we connect with the second ssh client on ESP32-S3 to the Developer Server (67) and serve to the cloud developer folder.
- now we crosscompile the hi.c and run on the first ssh client the build
- we do this moretime and patch also
- last but not least ESP32-S3 runs binary build micropython from cloud share in the first ESP32-S3 client and also lua from ESP32-S3 userspace  in the second SSH client same time..

WoWZa -> [YOUTUBE #ESP32DE](https://www.youtube.com/watch?v=bnFbuTDlGMY) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/8a20fe8c-860b-4ec5-9a59-405ab67e93e7)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d2a68e8f-a6c0-4fd5-b508-f48a832b02ab)



 

# 09. Aug 2023
  
  - [lua](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/blob/main/request/lua.md) by an REQ
    
    [4mig4](https://twitter.com/4mig4/status/1689283566637572096) requested lua on twitter - so yeah, why not give this a try
    
    live-shoot- from 09.Aug 2023 - ( there is a [yt video](https://youtu.be/m8AyipBql_o) also )

    it's working also remote by ssh and on the mounted NFS share

    WoWZa! 

    ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d5dc3c6b-131e-4eef-951c-5669962b4930)



# 08. Aug 2023
 
 - WIP: nommu: do_mmap: translate executable mappings  ( WoWZa! ) 
 - enable NFS client in config
 - map PSRAM into the second 16M of the IRAM region

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ee1964e5-19ca-40d9-a54e-eb4ecf27e1ab)


# 03. Aug 2023

local console runs on wifi ssh server, 2 ssh clients connected per wifi and runs micropython port. is this the world's first micropython server on a MCU? :) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/0b46643b-b6d9-4e3b-ba5f-c57ded59c1b6)


# 12. July 2023

... just flashing ... but what ? :)
![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6c531a1b-722d-4e46-bc91-e6be6186fa02)



# 11. July 2023

testing [wifi support](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/blob/main/cheat%20sheets/idx.md#wifi-on-s3-linux---your-wireless-connect)
 - esp-hosted "network-device"

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ee862f09-368e-4b19-a306-56b1a261f42c)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5a4d5807-d0e3-4cc2-a2a4-283cffe1550a)



# 5. July 2023

testing micropython basics
 - MICROPY_BANNER_MACHINE
  - static on Nativ Port
  - prepaire diverse ATM'S and overlay MICROPY_BANNER_MACHINE by user   
 - function calls
 - import hello world lib
 - more..

   ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/8e60e345-2c17-4f46-bccb-5e01d3946f08)



# 4. July 2023

posix support ( NPTL in a testcase ) 
 - testphase posix successfull
 - NPTL prepairing

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/afd7af6f-0c06-42ba-a53e-08e4e184d5ab)



# 29. June 2023

micropython [mp](https://github.com/micropython/micropython) native port support [done](https://twitter.com/eMbeddedHome/status/1674402559400845312), 
 - test phase begin
 - fine-tuning of all functions

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/9634c358-5a23-46df-bb42-096ed8f8e90b)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6011d036-86c9-4bfb-811f-ed87ae808aba)



# 05. June 2023

- liosti [get jffs2](https://twitter.com/eMbeddedHome/status/1665575763247001602) V 2.2 NAND RW support ( just a testing )

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/35c3c8ff-4e8e-429c-9552-3e8b8013762c)


# 04. June 2023
mtd tools support -

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/847e8768-57ef-48ae-acf6-928402b41be8)



# 03. June 2023
liosti get it's own partition -

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/304fb8a4-de13-4fa6-a811-30fc3522f310)





# 25. May 2023
cross toolchain 'Cupcake' 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/51512e68-3dac-40b3-aeff-20a5d75b2c0d)


Segmentation fault gone.

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/33cc1d28-1e2a-4c9f-a5be-db0c2ae71fa6)
