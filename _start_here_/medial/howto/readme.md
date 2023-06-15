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

# VM VirtualBox

1. [Download](/_start_here_/virtualbox.md) and install, at time of write this, VirtualBox >= 7.0 
2. [Download](/_start_here_/virtualbox.md) and install  at time of write this, VirtualBox Extension Pack
2. Setup a new flexibility linux guest (100 GB) 
3. Create a xtra flexibility second drive and use it in the new guest (100 GB) 

# Ubuntu 22.04 LTS
1. [Download](/_start_here_/ubuntu.md) ISO Ubuntu 22.04 LTS
2. Include the ISO to your linux guest as boot cd/dvd
3. Run your VM and boot from ISO
4. Install Ubuntu to your first drive
5. After install setup the extra partition if you want use it for the toolchain 


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
