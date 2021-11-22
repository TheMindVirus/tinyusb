@echo off

echo %CD%
set PWD=%CD%

set BUILD=build
set PICO_BOARD=pico
set PICO_PLATFORM=rp2040
set PICO_COMPILER=pico_arm_gcc
set PICO_GCC_TRIPLE=arm-none-eabi
set PICO_SDK_PATH=%CD%\pico-sdk
set PICO_TOOLCHAIN_PATH=%CD%\pico-toolchain\gcc-arm-none-eabi-9-2019-q4-major-win32\bin
set ELF2UF2_PATH=%CD%\pico-toolchain\elf2uf2-mingw32-i686
set PIOASM_PATH=%CD%\pico-toolchain\pioasm-mingw32-i686
set DOXYGEN_PATH=%CD%\pico-toolchain\doxygen-w20140924_1_8_8\bin
set PYTHON_PATH=%CD%\pico-toolchain\python-3.7.9-embed-win32
set MAKE_PATH=%CD%\pico-toolchain\make-3.81-bin\bin
set CMAKE_PATH=%CD%\pico-toolchain\cmake-3.13.0-win32-x86\bin
set CMAKE_FLAGS=""
set CMAKE_FLAGS=%CMAKE_FLAGS% --build "%CD%\%BUILD%"
set CMAKE_FLAGS=%CMAKE_FLAGS% --target "%CD%\pico-examples"
set CMAKE_FLAGS=%CMAKE_FLAGS% -G "Unix Makefiles"
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_MAKE_PROGRAM=make
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_BUILD_TYPE=Release
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_SYSTEM_NAME=Generic
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_SYSTEM_PROCESSOR=arm
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_CROSSCOMPILING="TRUE"
set CMAKE_FLAGS=%CMAKE_FLAGS% -DPICO_COMPILER=%PICO_COMPILER%
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_C_COMPILER=%PICO_TOOLCHAIN_PATH%\arm-none-eabi-gcc.exe
set CMAKE_FLAGS=%CMAKE_FLAGS% -DCMAKE_CXX_COMPILER=%PICO_TOOLCHAIN_PATH%\arm-none-eabi-g++.exe
set CMAKE_FLAGS=%CMAKE_FLAGS% -DPICO_BUILD_DOCS=ON
set PATH=%PICO_TOOLCHAIN_PATH%;%CMAKE_PATH%;%MAKE_PATH%;%PYTHON_PATH%;%DOXYGEN_PATH%;%PIOASM_PATH%;%ELF2UF2_PATH%