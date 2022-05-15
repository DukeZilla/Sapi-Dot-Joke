@echo off

set __compat_layer=runasinvoker

Powershell.exe -executionpolicy bypass -f "PsSapi.ps1"

exit