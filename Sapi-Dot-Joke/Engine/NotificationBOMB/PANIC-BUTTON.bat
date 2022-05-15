@echo off

set __compat_layer=runasinvoker

taskkill /im "wscript.exe" -f

taskkill /im "powershell.exe" -f

taskkill /im "cmd.exe" -f

exit