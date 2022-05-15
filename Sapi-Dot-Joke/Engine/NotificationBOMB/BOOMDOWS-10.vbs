Set throw = wscript.createobject("wscript.shell")
on error resume next

throw.run "SoundPlayer10.vbs"
throw.run "One.bat", 0
throw.run "InfoBomb.bat", 0
wscript.sleep 2000
throw.run "ExclamationBomb.bat", 0
throw.run "ErrorBomb.bat", 0
wscript.sleep 2000
throw.run "ExclamationBomb.bat", 0
throw.run "ErrorBomb.bat", 0
throw.run "ErrorBomb.bat", 0
throw.run "ExclamationBomb.bat", 0
throw.run "ErrorBomb.bat", 0
wscript.quit
