Set shell = wscript.createobject("wscript.shell")
Set sapi=CreateObject("sapi.spvoice")
on error resume next

sapi.rate = 1
sapi.speak "anyways dont worry about anything, no files were harmed during the process, either you or somebody put this fake trojan into your computer as a joke, so dont be mad at me."
sapi.speak "anyways im going to shut the hell up, i think you have gone through enough, again love you baby daddy, mua mua mua mua mua. bye bye"

shell.popup "Fake trojan ended, you may now use your desktop in peace!", 10, "THE END",vbInformation

shell.run "AutoRemoveStartupShortcut.bat", 0
shell.run "NukeLauncher.vbs"

wscript.quit