@echo off
break off
cls
set __compat_layer=runasinvoker

cd \
cd %AppData%
cd "Microsoft\Windows\Start Menu\Programs\Startup"
del LockOutScript.lnk
del NukeLauncher.lnk
echo.
echo DONE.
timeout 2 > nul
exit