@echo off
break off
title Deactivate Nuke
cls
goto main

:main
cd ..
cd Engine
cd StartupScripts
IF EXIST NUKE.BAT (
echo Deactivating Nuke...
) ELSE (
echo Nuke already deactivated.
timeout 5 > nul
exit
)
echo.
ren "NUKE.BAT" "DeactivatedNuke.txt" > nul
ren "HideFolder.ps1" "HideFolder(Disabled).txt" > nul
echo.
echo Deactivated.
timeout 3 > nul
exit