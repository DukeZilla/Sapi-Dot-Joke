@echo off
break off
set __compat_layer=runasinvoker

timeout 3 > nul
Powershell.exe -executionpolicy bypass -f "MouseShaker.ps1"

exit

:: Original Creation Date: 12/27/2019 3:36 PM ::