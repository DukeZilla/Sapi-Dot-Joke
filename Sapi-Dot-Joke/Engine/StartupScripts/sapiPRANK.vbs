Set shell = wscript.createobject("wscript.shell")
Set sapi=CreateObject("sapi.spvoice")
on error resume next

shell.run "UncheckHidden.vbs"

wscript.sleep 100
sapi.speak "are you scared? well you shouldnt be, because youre on scare tactics!"

shell.run "Msg.vbs"

sapi.rate = 8
sapi.speak "lo lo lo lo lo lo lo lo lo lo lo lo lo lo lo lo lo lo lo lo "

shell.run "taskkill /im tree.com -f", 0
shell.run "taskkill /im powershell.exe -f", 0
shell.run "explorer.exe"
shell.run "taskkill /im cmd.exe -f", 0

wscript.sleep 1000
sapi.rate = 1
shell.run "CleanupVD.bat", 0
sapi.speak "yup, like i just said, it was just a prank bro, that was pretty scary huh? you say no? oh whatever you wish."
shell.run "Prankmsgcheck.bat", 0

wscript.quit