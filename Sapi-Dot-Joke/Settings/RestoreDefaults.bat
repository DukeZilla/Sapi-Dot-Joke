@echo off
break off
title Restoration: Preparing...
cd ..
set back=%cd%
cls
goto time

:main
cls
echo.
echo.
echo 			Are you sure you want to reset all settings to defaults?
echo.
echo.
echo 					      Type Y or N
echo.
echo.
set /p mchoice=Select: 
if %mchoice%==y goto reset
if %mchoice%==n echo. & echo aborting... & exit /b
if %mchoice%==Y goto reset
if %mchoice%==N echo. & echo aborting... & exit /b

:time
echo.
echo Settings will reset to default in...
echo.
timeout 5
goto reset

:reset
title Restoration: In Progress
timeout 1 > nul
echo.
echo.
echo Restoring to defaults...
echo.

:LoudNoises
timeout 1 > nul
echo.
cd Engine
IF EXIST DELLBEEPSPAM.txt (
echo. Restoring loud noises
) ELSE (
goto startupscript
)
ren "DELLBEEPSPAM.mp3" "DELL BEEP SPAM(quiet version).mp3" > nul
ren "DELLBEEPSPAM.txt" "DELLBEEPSPAM.mp3" > nul
ren Temp-Volup.txt Temp-Volup.vbs > nul
ren VOLUP.txt VOLUP.vbs > nul
cd StartupScripts
ren "LockOutScript.vbs" "LockOutScriptQuietVersion.vbs" > nul
ren "LockOutScript.txt" "LockOutScript.vbs" > nul
echo. Loud noises restored.

:startupscript
cd StartupScripts
IF EXIST NukeOnStartup.bat (
echo Restoring startup scripts
) ELSE (
goto ActivateAutoRemove
)
echo.
timeout 1 > nul
ren "PsShortcut1.ps1" "PsShortcut.ps1" > nul
ren "NukeOnStartup.bat" "NukeOnStartup.txt" > nul
echo Startup scripts restored.
echo.

:ActivateAutoRemove
IF EXIST DeactivatedNuke.txt (
echo Activating Nuke...
) ELSE (
goto Wallpaper
)
echo.
ren "DeactivatedNuke.txt" "NUKE.BAT" > nul
ren  HideFolder(Disabled).txt" "HideFolder.ps1" > nul
cd %back%
cd settings
IF EXIST Activated.txt (
del Activated.txt /f /q & echo Nuke deactivated.
) ELSE (
goto Wallpaper
)

:Wallpaper
cd %back%
echo.
cd Engine
IF EXIST changewallpaper.txt (
echo Restoring Wallpaper...
) ELSE (
goto DiskTrayLoop
)
ren "changewallpaper.txt" "changewallpaper.ps1" > nul
cd StartupScripts
ren "ZeeWallpaper.txt" "ZeeWallpaper.ps1" > nul
echo Wallpaper restored.
echo.

:DiskTrayLoop
echo.
cd %back%
cd Engine
IF EXIST DiskTrayLoop.txt (
echo Restoring DiskTrayLoop...
) ELSE (
goto Shutdown
)
ren DiskTrayLoop.txt DiskTrayLoop.vbs > nul
echo.
echo DiskTrayLoop restored.

:Shutdown
echo.
cd %back%
cd Engine
ren Sweeper.vbs Sweeper.txt
ren Pranked.txt Pranked.bat
IF EXIST Trigger-Shutdown.txt (
echo Reactivating Shutdown Script...
ren Trigger-Shutdown.txt Trigger-Shutdown.bat > nul
echo.
echo Shutdown Script Restored.
) ELSE (
goto completed
)

:completed
title Restoration: Done.
echo COMPLETED
color 0a
echo.
echo All settings have been restored back to defaults.
echo.
echo.
echo createobject("wscript.shell"^).popup "Restoration complete.", 5,"RestoreDefaults.bat" > Cache.vbs
start Cache.vbs
timeout 1 > nul
del Cache.vbs
timeout 7
exit