@echo off
break off
title DisableChangeWallpaper
cls

echo Working...
echo.
cd ..
cd Engine
ren changewallpaper.ps1 changewallpaper.txt
cd StartupScripts
ren ZeeWallpaper.ps1 ZeeWallpaper.txt
echo Done.
timeout 1 > nul
exit