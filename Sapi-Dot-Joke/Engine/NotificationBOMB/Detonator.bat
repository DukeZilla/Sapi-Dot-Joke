echo off
break off
title Version Dictator
cls
set back=%cd%
setlocal
goto main

:main
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
cd %back%
if "%version%" == "10.0" start BOOMDOWS-10.vbs & exit
if "%version%" == "6.3" start BOOMDOWS-8.vbs & exit
if "%version%" == "6.2" start BOOMDOWS-8.vbs & exit 
if "%version%" == "6.1" start BOOMDOWS-7.vbs & exit
if "%version%" == "6.0" start BOOMDOWS-7.vbs & exit
if "%version%" == "5.2" start BOOMDOWS-XP.vbs & exit
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