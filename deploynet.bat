@echo on
set CODE="%CD%\build\usb\device\tinyusb_device_examples\net_lwip_webserver\tinyusb_dev_net_lwip_webserver.uf2"
set CMD="wmic logicaldisk where VolumeName="RPI-RP2" get DeviceID | findstr :"
echo %CMD%
for /F "tokens=*" %%n in ('%CMD%') do @(set DRIVE=%%n)
set DRIVE=%DRIVE:~0,2%\tinyusb_dev_net_lwip_webserver.uf2
echo %DRIVE%
copy %CODE% %DRIVE% 
pause