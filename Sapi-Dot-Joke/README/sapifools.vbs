Set wshShell = wscript.createobject("wscript.shell")
do

wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "^{ESC}" 
wscript.sleep 100
wshshell.sendkeys "{ESC}"  
wscript.sleep 100
wshshell.sendkeys "{ESC}"   

wshshell.run "error.bat" 
wscript.sleep 600
wshshell.run "error.bat"
wscript.sleep 600
wshshell.run "error.bat"
wscript.sleep 600
wshshell.run "matrix.bat"
wscript.sleep 2900

createobject("wscript.shell").popup "you just got pranked!", 5,"GOTCHU"
wshshell.run "KillCmd.bat"
wscript.quit
loop