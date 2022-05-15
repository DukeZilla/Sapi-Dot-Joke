set shell = wscript.createobject("wscript.shell")
do
shell.sendkeys "{capslock}"
wscript.sleep 50
shell.sendkeys "{numlock}"
wscript.sleep 50
shell.sendkeys "{scrolllock}"
wscript.sleep 50

loop