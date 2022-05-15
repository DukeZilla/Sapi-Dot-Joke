echo off
break off
title Check
cd ..
set back=%cd%
cls

:main
title Checking...
cd settings
echo.
echo.
echo 					Settings status check:
echo.
echo.
echo --------------------------------------O
echo.
cd %back%
cd Engine
cd StartupScripts
IF EXIST DeactivatedNuke.txt (
echo DeactivateNuke.bat: ENABLED
) ELSE (
echo DeactivateNuke.bat: DISABLED
)
cd %back%
cd Engine
echo.
IF EXIST changewallpaper.txt (
echo DisableChangeWallpaper.bat: ENABLED
) ELSE (
echo DisableChangeWallpaper.bat: DISABLED
)
cd %back%
cd Engine
echo.
IF EXIST DiskTrayLoop.txt (
echo DisableDiskTrayLoop.bat: ENABLED
) ELSE (
echo DisableDiskTrayLoop.bat: DISABLED
)
cd %back%
cd Engine
cd StartupScripts
echo.
IF EXIST NukeOnStartup.bat. (
echo DisableStartupScript.bat: ENABLED
) ELSE (
echo DisableStartupScript.bat: DISABLED
)
cd %back%
cd Engine
echo.
IF EXIST DELLBEEPSPAM.txt (
echo NoLoudNoises.bat: ENABLED
) ELSE (
echo NoLoudNoises.bat: DISABLED
)
cd %back%
cd Engine
echo.
IF EXIST PHASE-3-Shutdown.vbs (
echo DisableShutdown.bat: ENABLED
) ELSE (
echo DisableShutdown.bat: DISABLED
)
title Check
echo.
echo --------------------------------------O
echo.
echo.
pause
exit /b

@@@@@@@@@@@@@@@
cd %back%
echo.
IF EXIST .txt (
echo ENABLED
) ELSE (
echo DISABLED
)
@@@@@@@@@@@@@@@