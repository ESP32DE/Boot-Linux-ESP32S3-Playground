## use allways the newest firmware for test

# 30.05.2023 upload test firmware [ESP32S3N8R8BlinkyGPIO2.bin](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/raw/main/bins/S3/ESP32S3N8R8BlinkyGPIO2.bin) 

(only for engineering -not for product) for blinky test on target esp32-s3 ((N8R8))

- flash the bin to 0x0
- blinky for the gpio 2
- boot and login
- check the blinky with the prog: mygpio
- - this runs the mygpio prog and let the led blink 
- check the reboot shell command: reboot -nf
- - this simulate the reboot with a blinky which goes routed to the RST pin later
- - note: reboot without arg will shutdown kernel and you have to reboot/rst your board in the meantime




# 18.05.2023 upload test firmware [0x0.zip](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/raw/main/bins/S3/0x0.zip)

(only for engineering -not for product) for cross build test on target esp32-s3 ( (N8R8) ) 
- extra folder for cross compile test for the target
- - testme ( kernel Challenge for debugging purposes )
- - morning ( soft test / ptr test )

