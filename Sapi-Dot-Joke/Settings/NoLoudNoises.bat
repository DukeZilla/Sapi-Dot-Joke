@echo off
break off
title NoLoudNoises
cd ..
cd Engine
ren DELLBEEPSPAM.mp3 DELLBEEPSPAM.txt 
ren "DELL BEEP SPAM (quiet version).mp3" "DELLBEEPSPAM.mp3"
ren Temp-Volup.vbs Temp-Volup.txt
ren VOLUP.vbs VOLUP.txt
cd StartupScripts
ren LockOutScript.vbs LockOutScript.txt
ren "LockOutScriptQuietVersion.vbs" "LockOutScript.vbs"
echo DONE!
timeout 1 > nul
exit