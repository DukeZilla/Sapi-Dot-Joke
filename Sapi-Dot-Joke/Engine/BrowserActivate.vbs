Option Explicit
Dim sh : set sh = createobject("wscript.shell")
do

wscript.sleep 1250
sh.appactivate "Google Chrome"
sh.sendkeys "(% ) (R)"
sh.sendkeys "(% ) (X)"
wscript.sleep 100
sh.appactivate "Firefox"
sh.sendkeys "(% ) (R)"
sh.sendkeys "(% ) (X)"
wscript.sleep 100
sh.appactivate "Microsoft Edge"
sh.sendkeys "(% ) (R)"
sh.sendkeys "(% ) (X)"

wscript.quit

loop