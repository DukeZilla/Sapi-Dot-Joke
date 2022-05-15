echo off
break off
title prankd
cls
goto prank

:prank
cd StartupScripts
timeout 3 > nul
taskkill /im wscript.exe -f
start sapiPRANK.vbs
exit