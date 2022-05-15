Set Sound = CreateObject("WMPlayer.OCX.7")
set Launcher = wscript.createobject("wscript.shell")
set Check = createobject("scripting.filesystemobject")
wscript.sleep 100
If (Check.fileExists("ManualNUKE.bat")) then
Launcher.run "Console.bat"
Else
Launcher.popup "First; activate the nuke by starting ""ManualTRIGGER.bat""." & vbCrLf & vbCrLf & "Then launch it..." & vbCrLf & vbCrLf & "and run!", -1,"NOTICE:",vbSystemModal+vbExclamation
wscript.quit
End If
wscript.sleep 500
Launcher.run "ManualNUKE.bat", 0
wscript.sleep 5000
Sound.URL = "launch.wav"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
wscript.quit