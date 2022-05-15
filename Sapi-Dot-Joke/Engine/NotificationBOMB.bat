echo off
break off
title Version Dictator
cls
set back=%cd%
setlocal
goto main

:main
cd %back%
cd NotificationBOMB
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" cd Win10Version & start BOOMDOWS-10.vbs & exit
if "%version%" == "6.3" cd Win10Version & start BOOMDOWS-10.vbs & exit
if "%version%" == "6.2" cd Win10Version & start BOOMDOWS-10.vbs & exit 
if "%version%" == "6.1" cd Win7Version & start BOOMDOWS-7.vbs & exit
if "%version%" == "6.0" cd Win7Version & start BOOMDOWS-7.vbs & exit
if "%version%" == "5.2" cd WinXPVersion & start BOOMDOWS-XP.vbs & exit
rem etc etc
endlocal
goto eof

:://///Information\\\\\\
::------------------------
::if "%version%" == "10.0" echo Windows 10.
::if "%version%" == "6.3" echo Windows 8.1
::if "%version%" == "6.2" echo Windows 8.
::if "%version%" == "6.1" echo Windows 7.
::if "%version%" == "6.0" echo Windows Vista.
::if "%version%" == "5.2" echo Windows XP
::------------------------
::\\\\\Information//////