@echo off

set __compat_layer=runasinvoker

taskkill /im "microsoftteams.exe" -f

taskkill /im "onedrive.exe" -f

Powershell.exe -executionpolicy bypass -f "SimpleMin.ps1"

exit 