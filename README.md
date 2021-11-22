# tinyusb
### An Open Source Cross-Platform USB Stack for Embedded Systems

Development Fork of https://github.com/hathach/tinyusb/ \
Combined with https://github.com/raspberrypi/pico-sdk/ \
(Checkpoint No. 3 - 2 previous versions with bugs)

For use with any RP2040-based or 32-bit Cortex-M0+ platforms \
in a Windows 10 Development Environment (swap out toolchain to port)

### Deployment
* Use and modify the `build#.bat` files provided to force recompilation
* Use and modify the `deploy##.bat` only after having run `build##.bat`
* The `deploy#.bat` script only works when you connect 1 `RPI-RP2` in `BOOTSEL` mode
* TinyUSB itself is contained within `pico-sdk/lib/tinyusb`
* The entire portable toolchain for x86->arm32 is included in `pico-toolchain`
* The build artifacts of the scripts are in `build/usb/device/tinyusb-device-examples`
* The source to edit is located in `pico-sdk/lib/tinyusb/examples/device`

### Current State of USB_RNDIS_NETWORKING [net_lwip_webserver]:
![rndis](https://github.com/TheMindVirus/tinyusb/blob/rndis-dev/rndis.png)
The Macropad RP2040 with `tinyusb_dev_net_lwip_webserver.uf2` \
has shown up as an RNDIS device in Windows 10 Device Manager. \
As to whether the network functions or not is unknown. \
The solution to the lack of error messages is that the `lwip` submodule lib \
was an empty directory despite updating all submodules. This has been done manually.

This shouldn't exist...but it does... \
https://github.com/TheMindVirus/tinyusb/blob/rndis-dev/tinyusb_dev_net_lwip_webserver.uf2

### Next Steps
* Copy the .uf2 file of choice onto your RP2040-based product in `BOOTSEL` mode
* On Windows 10 open Device Manager and look for a `TinyUSB ###` device or `Pico ###`
* Check the functionality of the device in your choice of Networking Application
* Make changes to the source code (preferably in a Python module, otherwise a C library)
* Recompile by using `build###.bat` (don't use `deploy###.bat` on its own!!!)
