@echo off

set __compat_layer=runasinvoker

if exist "Duster.bat" start /min

timeout 7

taskkill /im "powershell.exe" -f

taskkill /im "wscript.exe" -f

timeout 1

Powershell.exe -ExecutionPolicy Bypass -f "Cleanup.ps1"

exit