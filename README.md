# tinyusb
An open source cross-platform USB stack for embedded system

Development Fork of https://github.com/hathach/tinyusb/ \
Combined with https://github.com/raspberrypi/pico-sdk/ \
(Checkpoint No. 3 - 2 previous versions with bugs)

For use with any RP2040-based or 32-bit Cortex-M0+ platforms \
in a Windows 10 Development Environment (swap out toolchain to port)

### Deployment
* Use and modify the build#.bat files provided to force recompilation
* Use and modify the deploy##.bat only after having run build##.bat
* The deploy script only works when you connect 1 `RPI-RP2` in `BOOTSEL` mode
* TinyUSB itself is contained within `pico-sdk/lib/tinyusb`
* The entire portable toolchain for x86->arm32 is included in `pico-toolchain`
* The build artifacts of the scripts are in `build/usb/device/tinyusb-device-examples`
* The source to edit is located in `pico-sdk/lib/tinyusb/examples/device`

Current State of USB_UAC2_AUDIO [uac2_headset]:
![audio](https://github.com/TheMindVirus/tinyusb/blob/main/audio.png)
This recording was captured in FL Studio Edison VST by routing audio with ASIO4ALL \
in the mixer as a send/return path to and from the Adafruit Macropad RP2040.

Current State of USB_UVC_VIDEO [video_capture]:
![video](https://github.com/TheMindVirus/tinyusb/blob/main/video.png)
This capture was recorded in OBS Studio using a BlackMagicDesign Intensity Pro \
at 720p@60Hz with an Xbox One in the HDMI chain and Windows on Raspberry Pi on Pi4 \
at 1080p@59Hz connected to the Adafruit Macropad RP2040 generating colour bars \
at 128x96@10Hz with an average throughput of 5 Frames Per Second (FPS).

### Next Steps
* Copy the .uf2 file of choice onto your RP2040-based product in `BOOTSEL` mode
* On Windows 10 open Device Manager and look for a `TinyUSB ###` device or `Pico ###`
* Check the functionality of the device in your choice of Audio/Visual Application
* Make changes to the source code (preferably in a Python module, otherwise a C library)
* Recompile by using build###.bat (don't use deploy###.bat on its own!!!)