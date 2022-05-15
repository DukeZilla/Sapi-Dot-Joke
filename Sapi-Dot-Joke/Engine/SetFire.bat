@echo off
break off
title FIRE FIRE FIRE
cls
goto main

:main
cd StartupScripts
Powershell.exe -executionpolicy bypass -f "Fuego.ps1"
pause > nul