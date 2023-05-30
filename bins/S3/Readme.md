##

25.05.2023 upload test firmware ( only for engineering -not for product) for blinky test on target esp32-s3 ( (N8R8) )
- flash the bin to 0x0
- blinky for the gpio 2
- boot and login
- check the blinky with the prog: mygpio
- - this runs the mygpio prog and let the led blink 
- check the reboot shell command: reboot -nf
- - this simulate the reboot with a blinky which goes routed to the RST pin later
- - note: reboot without arg will shutdown kernel and you have to reboot/rst your board in the meantime



18.05.2023 upload test firmware (only for engineering -not for product) for cross build test on target esp32-s3 ( (N8R8) ) 
- extra folder for cross compile test for the target
- - testme ( kernel Challenge for debugging purposes )
- - morning ( soft test / ptr test )

