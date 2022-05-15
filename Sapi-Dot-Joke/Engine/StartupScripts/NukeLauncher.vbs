set Launcher = wscript.createobject("wscript.shell")
On Error Resume Next
Launcher.run "SimpleBAT.bat", 0
wscript.sleep 1000
Launcher.run "NUKE.bat", 0
wscript.quit

' Original Creation Date: 1/12/2020 9:31 PM '