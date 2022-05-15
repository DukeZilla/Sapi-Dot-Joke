@echo off
break off
cls
goto main

:main
echo Working...
cd ..
cd Engine
cd StartupScripts
ren "PsShortcut.ps1" "PsShortcut1.ps1"
ren "NukeOnStartup.txt" "NukeOnStartup.bat"
cd ..
if exist "Trigger-Shutdown.txt" ren Sweeper.txt Sweeper.vbs & ren Pranked.bat Pranked.txt
timeout 1 > nul
echo Disabled!
timeout 1 > nul
exit

:: Original Creation Date: 2/4/2020 1:20 PM ::