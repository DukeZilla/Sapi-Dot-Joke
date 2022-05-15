@echo off
break off
set __compat_layer=runasinvoker
goto main

:main
taskkill /im "powershell.exe" -f
timeout 2
taskkill /im "wscript.exe" -f
Powershell.exe -ExecutionPolicy Bypass -f "Cleanup.ps1"
exit

:: Original Creation Date: 1/18/2020 12:39 PM ::