@echo on
set CODE="%CD%\build\usb\device\tinyusb_device_examples\audio_2i2o\tinyusb_dev_audio_2i2o.uf2"
set CMD="wmic logicaldisk where VolumeName="RPI-RP2" get DeviceID | findstr :"
echo %CMD%
for /F "tokens=*" %%n in ('%CMD%') do @(set DRIVE=%%n)
set DRIVE=%DRIVE:~0,2%\tinyusb_dev_audio_2i2o.uf2
echo %DRIVE%
copy %CODE% %DRIVE% 
pause