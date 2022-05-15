'Set shell = wscript.createobject("wscript.shell")
Set sapi=CreateObject("sapi.spvoice")
set ntwk=createobject("wscript.network")
do

wscript.sleep 275
sapi.speak "Oh " & ntwk.username & ". you are so screwed my friend!"

wscript.quit

loop