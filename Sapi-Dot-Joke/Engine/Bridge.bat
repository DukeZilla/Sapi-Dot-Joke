@echo off
break off
cls
goto main

:main
taskkill /im wscript.exe -f 
start /min PHASE-3.vbs
Powershell.exe -executionpolicy bypass -f "NeverEndingMouseTremble.ps1"
exit