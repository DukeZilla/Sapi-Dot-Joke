@echo off
break off
cls
goto main

:main
cd StartupScripts
taskkill /im wscript.exe -f
timeout 8 > nul
start LockOutScript.vbs
exit