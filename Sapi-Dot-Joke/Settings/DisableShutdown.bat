echo off
break off
title Disable Shutdown
cls
goto check

:check
cd ..
cd Engine
IF EXIST Trigger-Shutdown.txt (
echo Option already disabled.
echo.
echo Start RestoreDefaults.bat to reverse it.
timeout 4 > nul
exit
) ELSE (
goto main
)

:main
cls
echo Disabling...
ren Trigger-Shutdown.bat Trigger-Shutdown.txt
cd StartupScripts
if exist "PsShortcut1.ps1" cd .. & ren Sweeper.txt Sweeper.vbs & ren Pranked.bat Pranked.txt
echo DONE.
timeout 2 > nul
exit
