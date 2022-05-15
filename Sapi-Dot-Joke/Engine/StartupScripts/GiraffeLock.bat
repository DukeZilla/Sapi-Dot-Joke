@echo off
break off
set __compat_layer=runasinvoker
goto main

:main
if exist "C:\Windows\Temp\b.jpg" exit
Powershell.exe -executionpolicy bypass -f "ZeeWallpaper.ps1"
exit

:: Original Creation Date: 1/12/2020 1:48 PM ::