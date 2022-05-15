@echo off
break off
cls

cd ..
Powershell.exe -executionpolicy bypass -f "VD-Cleanup.ps1"

exit