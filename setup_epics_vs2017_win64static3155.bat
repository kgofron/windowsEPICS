rem This file sets up for an EPICS windows-x64 build
REM https://epics.anl.gov/tech-talk/2015/msg01582.php

set EPICS_HOST_ARCH=windows-x64-static

rem These are the locations of "make", "re2c", "Perl", and EPICS base.  Prepend them to the PATH.

rem set PATH=C:\Program Files (x86)\GnuWin32\bin;C:\Program Files (x86)\re2c;C:\Perl64\bin;H:\epics\base\bin\windows-x64;%PATH%
set PATH=C:\MinGW\bin;C:\epics\re2c-0.13.5-bin;C:\Strawberry\perl\bin;C:\epics\base-3.15.5\bin\windows-x64;%PATH%
REM set PATH=C:\MinGW\bin;C:\epics\re2c-0.13.5-bin;C:\Strawberry\perl\bin;C:\epics\epics-base\bin\windows-x64;%PATH%

rem Execute the Visual Studio batch file for 64-bit builds

rem "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86_amd64
REM
REM "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64 
REM Above resulted in error: 'Error in script usage. The correct usage is: Syntax: vcvarsall.bat [arch]' 
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64

REM ======================================================
REM --------------- EPICS --------------------------------
REM ======================================================
REM set EPICS_HOST_ARCH=windows-x64
REM set EPICS_HOST_ARCH=win32-x86
REM set PATH=%PATH%;C:\epics\base-3.15.5\bin\%EPICS_HOST_ARCH%
REM set PATH=%PATH%;G:\epics\extensions\bin\%EPICS_HOST_ARCH%

REM ======================================================
REM ----------------- GNU make flags ---------------------
REM ======================================================
set MAKEFLAGS=-w