@echo off
break off
cls
goto main

:main
cd ..
IF EXIST changewallpaper.ps1 ( 
cd StartupScripts
start /min sapiPRANK-PT.2a.vbs
) ELSE (
cd StartupScripts
start /min sapiPRANK-PT.2b.vbs
)
exit