# This is a preparation for the installation assistance on the weekend of 17 and 18 June 2023. Please don't post yet
This page is still being edited / typos /  not finished yet

hi folks,

welcome to the live install help on weekend 17/18 June '23

please visit [Booting linux on ESP32s3 wiki](http://wiki.osll.ru/doku.php/etc:users:jcmvbkbc:linux-xtensa:esp32s3) Last modified: 2023/05/26 04:44 by jcmvbkbc and read instruction on steps. 

Check the Last modified version for agreement.

Here we setup an Environment for the Playground if you not have done yet
and setup, create and install #jcmvbkbc #Xtensa #Linux Port for #ESP32 S3

If necessary, it will be expanded from time to time, if questions and answers follow about it, 
they will flow in. VM and Ubuntu should be understandable to most of you system programmers, 
so the setup is simple. 

If questions arise, simply open an issue and we try to discuss, 
solve and incorporate it together. Suggestions for improvement are very welcome

If you use your Linux Setup you can overfly this steps.

Be sure you have standard developer tools installed and your system can be restore on msitake.  
Missing tools can be installed over check of dependencies crosstool-NG / buildroot.

If you use your own VM and want install Ubuntu 22.04 please read in your VM how you must do this in your VM. 

If you want install Ubuntu 22.04 LTS in your VM VirtualBox you can find your way around here in steps. 
You do not need the ISO step in this case, suggestion to create an extra drive for the toolchain

If you want install VirtualBox and Ubuntu 22.04 LTS you can also find your way around here in steps. 

The drive sizes are my onw used sizes, from the picture you see 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7deaeedc-ae20-4a3f-9159-baad927e0079)



that Ubuntu (dev/sda3 ) is ~ 65 GB ( 100 GB ) 
toolchain drive/partition (dev/sdb) ~ 25 GB ( 100 GB ) 

You can choice your own here, but be generous in the setup, although only as much is used as is actually in use, 
the toolchain files are very many and push the demand very high because of some unfavorable partitioning properties. 
Default settings are used, which Ubuntu specifies. 

If you have chosen good settings, you are welcome to contribute, then I will insert partitioning data.

Also you can use only one drive and install it in your home ~ 
the important thing is, that you have stay in one folder as base, 
and in this we install step by step the toolchain and buildroot hierachie like this picture

the base in this case is example: live-4-44 
this is named here so only cause this is the wiki version last update which the install was done
if the base is your home ~ perhabs you create an folder "s3linux" or like you want and go into this
and then beginn install step 1-3

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d81b684e-3e3c-4045-9c75-3a7090bc8dba)

the **xtensa-esp32s3-linux-toolchain** path later you should add to the search path later

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/b2119119-a42e-49f9-995c-48cde2d505a5)


step 4 ( ESP-IDF 5.0.1 **LINUX** Version ) i installed this in my home ~/
cause i have no other ESP-IDF there installed. 
you can install it like your need is, in home or also in this toolchain partition/drive
like it is writen in the instruction.

cause it will be good to change the toolchain / update the toolchain on newer things
this is a reason for separation the toolchain part to a own partition/drive
you can simple switch to an other partition/drive for the toolchain.
Everyone does it the way they want to do it. 
The only important thing is that the toolchain stays on the same line. 
So that it matches the installation instructions.
If you move them, you have to adjust the script/tools yourself.

we go here the way how the instruction is written for this.
if you see a picture which does not match the instruction 
i write an info for you to the picture that you know about this detail.

# VM VirtualBox & Ubuntu 22.04 LTS 

1. [Download](/_start_here_/virtualbox.md) and install, at time of write this, VirtualBox >= 7.0 
2. [Download](/_start_here_/virtualbox.md) and install  at time of write this, VirtualBox Extension Pack
3. [Download](/_start_here_/ubuntu.md) ISO Ubuntu 22.04 LTS


# VM VirtualBox New Guest ( Ubuntu 22.04 )

3. Setup a new flexibility linux guest (100 GB) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/89cd683c-dc3b-4288-8b91-ca47af0a4f36)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e66b6864-de77-4488-8e95-3c6894d1bf2c)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/da154ec5-38dd-4b07-8a1a-4b5053ec3855)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/03c2dc0b-8260-4ad9-ab56-49b70a3cf0de)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7d067b12-c746-4e37-9a02-aa8819c37419)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c0a8bc0f-e2ad-45f1-89de-09af5da0c668)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/658c42b1-97ea-4f43-85da-09d1eda9af6e)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c65472d8-490f-4c27-9411-c14dc4df84f8)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/60847125-24c4-4cd3-9afe-faf1dfbab59f)



# Skip this step if you want install to your home or other

4. Create a xtra flexibility second drive and use it in the new guest (100 GB) 
- scroll up to tools 
- 1 press tools
- 2 you see all your disc on right, in this case you see your created disc for your new vm guest
- 3 press create

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c0c331ae-0d96-47df-85f3-ed3e2e9f2535)


- 4 select the new disc character

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5be42fd9-e4da-4dcf-9a41-af7d02375661)

- 5 select a dynamically disc

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/770b5dd9-0b56-45c7-8394-41579324bd0f)

- 6 fill out the properties, create it under your spcae where you created your vm guest disc
- i name it here like the toolchain is for "xtensa-esp32s3-linux-uclibcfdpic" you can name like you want

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/547f6151-e634-4f41-bdbf-44bcdd991863)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/bafdf219-82e1-473a-bf57-4f908798c4f5)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/2fa9c8f2-553c-487e-8cf3-b71c610ab045)

- 7 scroll down to your created VM guest and press only one time - you see on right side the properties from your VM
- 8 press storage from your created VM guest

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/159daa6a-64b2-4010-929a-e48913ba854b)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3407e311-9a76-440c-b85c-9df8715bb10a)

- 9 press controller:sata(1) and a add harddisk (2)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/b45bc56c-81cb-4829-8a47-6ddd6f2bc95f)

- 10 choice your created harddisk for your toolchain and press choose

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/df1ee135-cb9f-4e30-871d-d52ea769fb8d)

- 11 your second harddisk is added

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/73df30bc-173c-4981-b55e-8cae959c385c)

- 12 now check your 2 drives, if you use SSD for this then activate Solid-State-Drive

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3f008c6a-d2ab-4ddc-87f8-b18625c2bbd8)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/48145632-1893-4025-95c3-e88a6d4f7f6b)

- 13 now check your VM machine 
  - General
  - Advanced ( if you want copy/paste clipb from your HOST <-> GUEST setup this to your choice
  - if you serve from your host ( windows / linux / mac what ever and you want copy links/text to the guest, you should 
  - activate bidirectional, in my case i share Host <-> Guest so text can be copied between them in bidirectional mode
  - windows user: forget the grafik copy - use your windows screenprint for screenprints from the VM or use the snappshot func

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ac23b98e-4e42-4a5c-bd80-705052cbf7be)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/73896193-3d3e-484f-bf6a-4d15c2d4acc7)

  - setup your display like your hardware is

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f5077d93-a3c1-4628-926e-8e0db0ae0780)


  - check your network

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/1f1c2117-b4cd-4c1c-a752-3cf4c9f3bc1a)


  - check your usb
  - if you connect now your esp you can add your usb port here now - we do this later

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/33d141d8-2e33-4b2c-b5c8-624741561de3)


ok for the first time.

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/920375af-013c-47a7-add0-15f28b377353)



# First power on & install Ubuntu 22.04 LTS ( in the VM VirtualBox ) 

1. Run your VM now by doubleclick and this will boot from Install ISO 




3. Install Ubuntu to your first drive
4. After install setup the extra partition if you want use it for the toolchain 


# Build toolchain dynconfig library and export XTENSA_GNU_CONFIG for use by the toolchain

[Info/Issues Step 1](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/1)

( picture follows ) 


# Build the toolchain
- Using crosstool-NG

[Info/Issues Step 2](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/2)

( picture follows )

# Build the rootfs and kernel image

[Info/Issues Step 3](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/3)

( picture follows )


# Build and flash the bootloader, flash kernel and rootfs images

[Info/Issues Step 4](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/4)

( picture follows )
