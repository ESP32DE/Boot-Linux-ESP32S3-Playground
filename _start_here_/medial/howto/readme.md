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

1. Run your VM now by doubleclick and this will boot from Install ISO and shows you the bootloader menu
 - choice install and press enter and watch the full auto install mode which you did setup in the VM **WoWZa**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/54c51601-9ba2-440b-b241-64f517d75d7d)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/4b84b6db-d940-4a8b-95f0-d37d80bf1a1b)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/505b4288-d386-4739-b9fb-2b0dbe606948)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c9648755-f1fc-4b0d-9ed2-0a3c4cd10e79)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7cef422d-ece3-418a-9b6d-e2ac4ce2101b)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/de6e328f-ebed-4c50-989a-57d672d4a319)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/da22ef70-7b25-419f-a7a5-cd1efd427cc9)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/2720afd5-7ecb-473d-aff0-d3a023970f28)

( be sure you are connected with your HOST - so install can run all for you also downloads ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/121603cc-2d5b-4a3a-ad02-09367ccb4350)

( after install ubuntu will reboot by self ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/203722e3-51b9-408d-8ce3-db368d7eec89)

( 100 h later ( just kidding )   your VM is waiting  for your login - use the login data you did in the setup guest ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a92d84ac-37d3-44d5-be79-00dd658ce689)

( skip this ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/aa7a7324-cf18-4b60-9f75-1ea0fbb4b5a2)

( press next ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/85fbb9f3-8556-4f39-8b5c-f9b77fcaf48a)

( fill out like you want and press next) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/72bc30b1-276a-4c66-aee9-2c2b99023d30)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/769f73c9-3daa-40f6-a6b3-8bbaf627e63d)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/82270fd9-0307-43f5-a6b9-307c6f9a54a6)

( install is ready - press done ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3defeb17-4d44-4dd2-a2a7-8fed36a25492)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/4f768c8f-016f-45bd-867a-f4b39e94a4d5)


2. After install check/setup the extra partition if you want use it for the toolchain / or skip this

- press the left point menu, select utilities, choice disks

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5e2cc7c1-b921-4739-9d27-2d0d27549fd5)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ba9dc26a-d138-4c82-9e6d-2a6693144d95)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/8457407a-ea61-4b6b-baff-db913a4cd722)

- you see now your 2 harddisk, press on the 1. harddisk, check it, press on the 2. harddisk and check

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/dae57a52-84a3-407f-a261-a6ebde0843da)

( Ubuntu Harddisk ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f4aa9207-fde5-4a4c-8c72-77e1e385d8cf)


( xtensa-esp32s3-linux-uclibcfdpic harddisk will be your toolchain later - we must create a partition/format this )

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/2284634a-50d3-46c3-bf44-f48910fd9d78)


( press on the extra harddisk (1) , press additional partition options (2) , press format partition (3) )

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/31ccc85e-8956-46a1-9bdb-e5262be606ef)

( name your volume and next ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ef0a3902-624e-4d61-b5dc-06daaf88b710)

( check it again that you choose the empty harddisk and not the ubuntu system harddisk . all data on this will be lost after pressing format ! ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3ddacf78-1415-4f71-8f0a-992746e3b711)

( enter your password which you set in the setup ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/929bcf9f-ef9b-4126-a5b1-7a535ecf90b9)

( your extra HD is formated - close the utilities window )

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/bc7e4634-19bd-4f28-a7b3-fd0f2d9d7f32)


# Mount your extra HD for the playground/toolchain 

- click in desktop left the harddisk symbol / right click for submenu to mount/unmount
- fill in your root password

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/308e4a7c-abb3-4342-89cd-bd4e3f13db7d)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/fab896ac-ada6-4bb6-a60c-7a6443f49406)

- check in files your drives

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/930bf6ef-3390-4bae-8880-7de60860bcea)

ready :)


we setup terminal to the favorities, close the file window and click on the application menu 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f8c4242e-436a-4e80-ac70-6d460b5bd52b)

- right click on terminal and add it to favorites
 
 ![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/fafdde3c-47fe-4792-86f6-94c3bcb4269f)

- now your terminal app is on the favorities menu  - don't open it - it will not work on freshen 22.04 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e7490c90-a121-444c-96d3-281f0755340e)

- now setup your language in the settings, go to show application menu and open settings - then change your region/language and restart

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3802736e-0b70-422e-a5e4-57f0db1f10dd)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/35aa1d10-08fc-4f7d-825b-25efb50e5ae9)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e001e508-e27c-4c0e-9757-443e26655c2b)

you must confirm the logout 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/82a290bd-546b-4d4b-9a48-1abbbad0dae0)

after the restart and login, your terminal is ready to run, click on your favorities the terminal symbol

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/fbe74359-ef1a-4369-9dbb-9fb15f871105)

we check now the second Harddrive, please press / right click  on the Disk Symbol ( SSD if you use SSD or your choice Symbol ) and mount it

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/635117a4-6d74-4b45-9851-c0c8487c39d4)

right click in the window and create the folder **s3linux**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5a355740-dfd5-419d-b8fe-3c19ddca34d6)

open now a console with STRG + ALT + F3 , 

login with **root** and your password 

add the user **liosti** to sudo group, 

exit this console window with **exit**, the user **liosti** now is in the **sudo** group

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a1ebcf5b-a5ba-43e8-b10d-495a26348f48)

switch back to your desktop with STRG + ALT + F2

for refresh this, restart press right upper corner (1) and select restart (2)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/003f3c57-8883-493a-83d0-ff84a4e7bfb5)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7f6a9741-843b-453d-9e58-c1987ba474f7)

re login with your user **liosti** and your password

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/2b007d0b-179c-4277-bd95-e9493e981a15)


mount our second harddrive for the playground/toolchain

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6e448104-b333-4077-ae1a-9a99db73f608)

right click in the window and choose **open in terminal**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/3086af79-ac94-4a13-afa5-17dbb3ddb1ed)

we are now in the playground directory, 

updates the package sources list 
to get the latest list of available packages 
in the repositories

`sudo apt update`

you will be asked for the sudo password

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/fd19dd3f-d20c-46f0-8766-70d580047ca1)

restart

you are ready to install the toolchain, for few things we need to do updates and install developer tools which is need for the builds.
but for now you are good in this part.

Note: Allways be sure you did mount your drive if you want work with this.

---
---

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/696554df-4f68-4732-b0c2-66d98865d7d6)

---
---
login, mount your toolchain drive, open the **s3linux** folder and open it in the terminal

we start from here and we going step by step to build and install the toolchain, buildroot

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6e614fd8-3c80-42e4-8a8e-9f97e92be037)


# Build toolchain dynconfig library and export XTENSA_GNU_CONFIG for use by the toolchain

[Info/Issues Step 1](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/1)

// to do: install all this tools
// sudo apt install git,....  

( picture follows ) 

git clone https://github.com/jcmvbkbc/xtensa-dynconfig -b original

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e37ed9c6-1fc2-4433-bf34-ef976c5b1dc4)

git clone https://github.com/jcmvbkbc/config-esp32s3 esp32s3

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/fc581db3-076a-4da4-be9e-d160bfb5d961)

make -C xtensa-dynconfig ORIG=1 CONF_DIR=`pwd` esp32s3.so

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/883999ac-e81f-4ef2-8546-863732f4fd2c)

export XTENSA_GNU_CONFIG=`pwd`/xtensa-dynconfig/esp32s3.so

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/1f81141f-9c61-4622-afa7-91dea6cdb82d)


Step 1 - done - 


# Build the toolchain
- Using crosstool-NG

[Info/Issues Step 2](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/2)

git clone https://github.com/jcmvbkbc/crosstool-NG.git -b xtensa-fdpic

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a4b3391e-939f-4875-9ee1-b2b152f03136)

pushd crosstool-NG

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/babdc614-252c-4123-86c5-08a64779a0f1)

./bootstrap && ./configure --enable-local && make

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/9ed9a037-ad70-42e2-819a-1de76e96b1d8)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/986f8637-7fe1-4db1-b381-69bbc63b5f1b)


./ct-ng xtensa-esp32s3-linux-uclibcfdpic

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/0894a5a4-b47e-4e0c-bf96-66a6a976fd01)

--- 
**WAIT**

live-task 

17. June - 18. June 2023

CET 6:00 PM - CET 6:00 AM

---

---
![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/9c00d5bc-66a9-4b13-98c7-772bd6bd7337)

// to do: picture upload


CT_PREFIX=``pwd``/builds nice ./ct-ng build

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/72084809-e824-40e4-b3b5-d6aee9154113)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/471ae70d-1d7b-4100-96bd-7412d90d078a)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a9470239-3732-418f-becc-adb153165130)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/8dda01af-f1eb-4614-9f82-7d9885ad33d1)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/381c0fdb-54d0-4854-b348-9d50a549dad2)


do not forget

`popd`


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/563001b2-4265-42a5-b92d-709319c7d64c)




# your toolchain is ready :)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/00194f41-1e71-4dfb-9aab-83d228335b60)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/03f6d3e5-b7f5-4d03-be06-bb1cacebf770)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/cb36a257-a1d7-4c62-a52b-85d938d934dd)

---



# Build the rootfs and kernel image

[Info/Issues Step 3](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/3)

be sure you been in the **s3linux** base folder / or what you did set/name as base from install begin

here in this example it is **/media/liosti/playground/s3linux**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/969c851f-ae75-41d0-9ff6-5a4f06e23e0a)


$ git clone https://github.com/jcmvbkbc/buildroot -b xtensa-2023.02-fdpic

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6a4de780-b91d-475c-98f2-3a74f6ca1427)



$ nice make -C buildroot O=`pwd`/build-xtensa-2023.02-fdpic-esp32s3 esp32s3_defconfig

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7a68d5eb-acf1-42cd-99f9-05183112a501)




# adjust external toolchain location to the one built above

$ nice make -C buildroot O=`pwd`/build-xtensa-2023.02-fdpic-esp32s3 menuconfig 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/2efc07d5-f01c-41da-9ad8-ff2c0f5e38f4)

# menuconfig 
![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a5bc2fa5-208c-4979-b97b-bdc2288a39a5)


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d5a96623-1b6c-4f0b-afac-ef93dc6eda96)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/4fcb82a4-6202-4d64-b99d-6f656783e228)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e33d95fe-062c-4768-9b38-4d2865b1914a)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e46e9915-99dc-4872-b977-760524417125)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5122c9f5-a80c-4aed-940c-1f72b3abc8ae)


optional you can set the welcome message, password


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/394edcb3-2a69-4d96-b094-31d973584b83)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/571b643f-3933-4f02-a3f8-03c6459b69dd)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ee728c90-5f92-4d65-8d1a-f1d622846941)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f50c898b-5333-41e4-a5f0-d69fa272c48a)

if you have done all your basicly hello world settings , click exit and save the config. you can later setup more and more for your kernel and rootfs.

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/b9c26af2-6e1e-4296-bd20-c3a726054da2)


...and build it - 

$ nice make -C buildroot O=`pwd`/build-xtensa-2023.02-fdpic-esp32s3

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/90140e3c-da53-43d3-8d3b-5b2beeea8aac)


overloaded or unreachable at the moment can happen, 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/9920fa39-6f3f-4223-a770-16841fbfd093)

.. reconnect moretimes .. 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d78c6375-148e-473e-b7c9-8d437ab01edb)

.. and good ..

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/7339d9ec-6cc3-4856-9f80-8b7e2a4abb20)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/eea9a998-837c-4cf5-86f0-98f4e402d823)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/0d90389a-d447-4835-925d-4633288bbfb2)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/86f09dd4-2e32-491b-a192-fc2abbaa2409)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d5f3d8fb-62f7-4253-9738-c90f63d6ce52)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6943bd9f-0f58-4c78-95a5-e6ec275feeff)

# Note:
---
in this case your images are in the path 

/media/liosti/playground/s3linux/build-xtensa-2023.02-fdpic-esp32s3/images

note this path which you use, you will this need later for flash the images to the adr of partition table from ESP-IDF linux project

xipImage = linux kernel

rootfs-cramfs = root/userspace

---


# Build and flash the bootloader, flash kernel and rootfs images

[Info/Issues Step 4](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/4)

( more picture follows )

this is different to the how to from wiki.
i prefer to install this in the home and create a folder for the git clone example ~/s3linuxidf
does no matter what you do - you can do this or that - i posted this 2 examples for the git clone
if you do this also on the second drive, don't care, you can do this. i show the way on ~/s3linuxidf


$ git clone https://github.com/jcmvbkbc/esp-idf -b linux-5.0.1

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f1af2432-3b97-4497-b669-596b95901343)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/9fab1748-eeaa-48f7-b7a9-856f0bf51339)


( ~/s3linuxidf ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/20f09023-2b4f-434f-9777-612365b42464)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/484e8e6f-f8cd-48fd-97d7-c211a6b9b6ee)


`pushd esp-idf`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/edd25bcd-4cdf-4c6b-b75e-8301e16dfeb6)

note in the wiki is export - you need first install if you fresh do an install
only for showing you what's happen if you did no install before

`. export.sh`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/73df9414-9333-4a90-9dda-d5df6d9b4108)


so please be sure you install first all tools which are need by the ESP-IDF from espressif
simple kickit with 

`./install.sh` ( not with install.sh ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/cf41bac3-3da3-4119-a8dc-57bf72318bcf)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/98a177c8-e462-478c-9b6a-5f5907e300f1)


if you get info, that there are few things missing like this **python3.10-venv** 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c6b7fcf1-62ab-4a2b-a074-cb9d42978e91)

simple install it: **apt install python3.10-venv** you need to run it with **sudo apt install python3.10-venv** 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/915c6c14-6fec-4859-8265-7ec8e08a7ba2)

and do a **./install.sh** again

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d5ab519c-ff69-4583-b0f9-7bee4b0d76b2)


perfect. now you can run 

**. ./export.sh**

like you know this from ESP-IDF, it's the ESP-IDF - just for Linux Example :)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/8f258766-75a7-4fb2-9a1a-d1fac7452309)


# Now - if you did not, you need soon your ESP32-S3 cause we go now final 

- setup - compile - flash

**setup**

`cd examples/get-started/linux_boot`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f0bc60b7-f5de-4309-ba98-e7b41cdf1923)

set your target first

`idf.py set-target esp32s3`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/eeb64333-44e5-4da6-a759-981d4a75f673)


cmake does not exist - so you see here this problem, let us solve this here by install cmake / check it does it be on the path
and i wil add this **important** to the **must_do_list** to do before we start, so you/other not run in this error 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/d5e68fd5-670c-4667-8707-4b45634c6280)


check it out 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/965363b7-1771-4ab7-bf36-c65eb0cf7664)

we install here with

**sudo apt install cmake**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5a06dae1-84a8-4e18-8025-d276be796032)


check it shortly and if all ok, we set the target **esp32s3**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/ddd2f671-2f56-4015-afc1-8f3e2b462fe1)

`idf.py set-target esp32s3`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/49453963-66df-4f1e-980e-e7b7e4b2d9ea)


from wiki the next step would ne the **build** but we will change first few things and set it in the right direction
so we're going to deviate a little bit now, btw you should have now your **ESP32-S3** ready by the hand.
You must know, which PSRAM and which FLASH does your kit/board has.
we going here for normal and we setup this for an ESP32-S3-N8R8 DevKitC-1
[what is mean](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/issues/4) with this:

it has 8MB flash as quad
it has 8MB psram as octal

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/b76cc344-b9ca-48ca-83ac-e538ef0677e5)

here is list:

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/0a12fd1c-ca80-4d6c-8b94-a7811638ce3e)

so we go now **first** in the **menuconfig**
we set up
- the right flash
- check the psram support also 
- the right psram
- right clk for psram & flash
- and few things what allways controll

let's check first, 

`idf.py menuconfig`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/de170706-2704-4736-9599-aac5421752fa)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/c892d285-74c5-4076-81d9-5dcac53022a9)


now load the config for the esp32-s3

info you see from your project, 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/59257461-4963-491b-88d5-94de80b1ce1d)

we load now **sdkconfig.defaults.esp32s3**


![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/947532cc-a7b6-4e93-a73d-754848d5cefc)


( und check flash example ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/393fff58-a4f9-42ee-93d3-574988fa4806)


( check partition table ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a8175178-dc70-430b-8800-202bd1ba3b20)


( check psram ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e0fa2851-bf41-46ed-8e49-c3dc44cc7f57)


after you check your details you exit the menuconfig and it will ask you for save if you changed things.
say yes if you are comfortable with it. ( note this please because it will not be the right later more ) 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/f047475e-e11b-46b8-b526-90861cb1574d)


we shortly check the partition table

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/2b8d718e-4e6c-4825-8b08-83303df5f42f)

and we build the project...

`idf.py build`

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/be34814d-1e61-448b-ace6-ce46f7095d78)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/bfefa2a4-7630-4394-a21b-c3a711be3341)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/af0c83d4-1f28-44ef-9af2-a0772309454d)

I wanted give you this lesson cause you will never forget it any more. sry :)
Now again, run menuconfig, load the **sdkconfig.defaults.esp32s3** check all like you did before and save it as **sdkconfig** file
sry - i do not like this way too. but it is. You see it, when you want load a file, it pops allways the "**sdkconfig**" file.

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/e3fc580f-254c-45af-91de-972f9c00a9d5)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/96c44cf5-0c32-45ad-a585-6d8c4c970efa)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/bab16625-4f49-4d91-80f4-7b6b3fd516a8)

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/14a61bd2-2748-4261-a119-a6a501ca138a)

on one hand you have hardware sdkconfig file for your board and on other hand you have the sdkconfig file from ESP-IDF.
you load your properties file and save it as ESP-IDF file. thats the way, i hope espressif will change this one day :)

close the menuconfig ( ESC ) and now buid run the build again

**idf.py build**

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/6c70344a-de62-4061-8b8c-ac9fd7793867)

---
wait :)

more picture comes

- prepair ESP32-S3 Board
- 

---

to do:

$ idf.py flash

$ popd

$ parttool.py write_partition --partition-name linux  --input build-xtensa-2023.02-fdpic-esp32s3/images/xipImage

$ parttool.py write_partition --partition-name rootfs --input build-xtensa-2023.02-fdpic-esp32s3/images/rootfs.cramfs
