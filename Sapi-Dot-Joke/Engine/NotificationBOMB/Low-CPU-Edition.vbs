Set throw = wscript.createobject("wscript.shell")
do

throw.run "BoomPlayer.vbs"
throw.run "One.bat", 0
throw.run "One.bat", 0
wscript.sleep 1000
throw.run "One.bat", 0
wscript.sleep 1000
wscript.quit

loop
