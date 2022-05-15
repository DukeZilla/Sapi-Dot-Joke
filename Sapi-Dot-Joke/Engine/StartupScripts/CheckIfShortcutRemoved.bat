set __compat_layer=runasinvoker

Powershell.exe -executionpolicy bypass -f "StartupShortcutGenerator.ps1"

cd \

cd %AppData%\Microsoft\Windows\Start Menu\Programs

start Startup

exit