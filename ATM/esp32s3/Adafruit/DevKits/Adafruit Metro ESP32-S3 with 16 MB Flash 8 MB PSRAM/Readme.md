
# Adafruit Metro ESP32-S3 with 16 MB Flash 8 MB PSRAM

SRC: https://www.adafruit.com/product/5500

Video: [It's 10pm](https://www.youtube.com/watch?v=ZxbHQr3fl9E) ... Do you know where your ESP32 linux install is??

# Features:
- ESP32-S3 Dual Core 240MHz Tensilica processor - the next generation of ESP32-Sx, with native USB so it can act like a keyboard/mouse, MIDI device, disk drive, etc!
- (Mini) WROOM module has FCC/CE certification and comes with 16 MByte of Flash, 8 MByte PSRAM
- Power options - USB type C or Lipoly battery
- Built-in battery charging when powered over USB-C
- LiPoly battery monitor - MAX17048 chip actively monitors your battery for voltage and state of charge / percentage reporting over I2C
- Reset and DFU (BOOT0) buttons to get into the ROM bootloader (which is a USB serial port so you don't need a separate cable!)
- JTAG 2x5 Header for more intense debugging
- Serial debug output pins (optional, for checking the hardware serial debug console)
- STEMMA QT connector for I2C devices, with switchable power, so you can go into low power mode.
- On/Charge/User LEDs + status NeoPixel with pin-controlled power for low power usage
- Low Power friendly! In deep sleep mode we can get down to ~100uA of current draw from the Lipoly connection. Quiescent current is from the power regulator, ESP32-S3 chip, and Lipoly monitor. Turn off the NeoPixel and external I2C power for the lowest quiescent current draw.
- Works with ESP-IDF, Arduino or CircuitPython 

![image](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/047d4bb5-70be-4068-af01-5c47f4834dd9)




S3Linux Playground Basic Info for S3Linux Image builds:
- 16MB QUAD Flash
- 8MB OCTAL pSRAM
- microSD Card feat.
- tinyUSB feat.
- more more ..


to do: create S3WiFi-Linux with Basics
- GPIO Blinky S3 Linux
- GPIO Blinky S3 Linux mpy Port
- SSH Server / SSH Client for Remote Work
- SCP support
  
