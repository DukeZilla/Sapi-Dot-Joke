echo off
break off
title DisableDiskTrayLoop
cls

echo Working...
cd ..
cd Engine
ren DiskTrayLoop.vbs DiskTrayLoop.txt > nul
echo Done.
timeout 1 > nul 
exit