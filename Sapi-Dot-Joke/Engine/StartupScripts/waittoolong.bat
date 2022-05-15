@echo off

set __compat_layer=runasinvoker

taskkill /im "wscript.exe" -f

start sapiAFTERIDLE.vbs

exit