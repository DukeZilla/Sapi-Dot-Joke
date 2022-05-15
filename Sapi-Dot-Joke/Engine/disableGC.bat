@echo off
break off
set __compat_layer=runasinvoker

taskkill /im "chrome.exe" -f

taskkill /im "firefox.exe" -f

taskkill /im "microsoftedge.exe" -f

taskkill /im "notepad.exe" -f

exit