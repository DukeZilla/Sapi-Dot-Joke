@echo off
set __compat_layer=runasinvoker
powershell.exe -executionpolicy bypass -f "SimpleMin.ps1"
exit