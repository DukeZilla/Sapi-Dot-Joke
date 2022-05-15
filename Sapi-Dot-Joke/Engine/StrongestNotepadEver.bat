@echo off
break off
title You will never close it!
set /a count=0
cls
timeout 3 > nul
goto main

:main
set /a count=%count%+1
tasklist | findstr /ic:notepad.exe
if %errorlevel%==1 start notepad.exe
if %count%==115 exit
timeout 1 > nul
goto main