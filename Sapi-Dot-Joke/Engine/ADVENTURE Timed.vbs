Dim WshNtwk, infoStr, timer, fso, shell, Sapi, filename, A
on error resume next


'-----------
' Setup
Set shell = wscript.CreateObject("WScript.Shell")
set fso = wscript.createobject("Scripting.FileSystemObject")
Set WshNtwk = WScript.CreateObject("WScript.Network")

' Timers
Function EnterTime()
	B = 60000
	A = Inputbox ("Enter initial time delay in minutes","Title","Ex: 5",vbOkCancel)
		If A = Cancel then
		wscript.echo "Script canceled."
		wscript.quit
			Else
			shell.popup "Started.", 3,"ADVENTURE Timed.vbs"
			C = A*B
			shell.run "StartupSetup.bat", 0
			wscript.sleep 10500
				' Update Popup
				infoStr = "Update complete for " & WshNtwk.UserName & ", press Ok to complete the formatted desktop experience." & vbCrLf & vbCrLf & _
				"Username :" & vbTab & WshNtwk.UserName & vbCrLf & _
				"Computer Name :" & vbTab & Ucase(WshNtwk.ComputerName) & vbCrLf
				shell.popup infoStr, -1, "Update Completed",vbInformation+vbSystemModal
			Set WshNtwk = Nothing
		wscript.sleep C
	End If
End Function

Function TickTock()
	filename = "Time.cfg"
	timer = fso.OpenTextFile(filename).ReadAll
		shell.run "StartupSetup.bat", 0
		wscript.sleep 10500
			' Update Popup
			infoStr = "Update complete for " & WshNtwk.UserName & ", press Ok to complete the formatted desktop experience." & vbCrLf & vbCrLf & _
			"Username :" & vbTab & WshNtwk.UserName & vbCrLf & _
			"Computer Name :" & vbTab & Ucase(WshNtwk.ComputerName) & vbCrLf
			shell.popup infoStr, -1, "Update Completed",vbInformation+vbSystemModal
		wscript.sleep timer
	Set timer = Nothing
End Function

' Time Initiator
if Not fso.FileExists("Time.cfg") then
	Call EnterTime()
	Else
	Call TickTock()
End If

' PHASE ONE
shell.run "calc.exe"

wscript.sleep 10000
shell.sendkeys " " 
wscript.sleep 10000
shell.sendkeys " "
wscript.sleep 15000
shell.sendkeys "{PGUP}"
wscript.sleep 1000
shell.sendkeys "^T"
wscript.sleep 500
shell.sendkeys " "

wscript.sleep 8000
shell.run "RandomAd.vbs"

wscript.sleep 10000
shell.sendkeys "{PGDN}"
wscript.sleep 8000
shell.sendkeys "{BS}"
wscript.sleep 100
shell.sendkeys "{BS}"
wscript.sleep 1000
shell.sendkeys "{BS}"
wscript.sleep 100
shell.sendkeys "{BS}"
wscript.sleep 100
shell.sendkeys "{BS}"

wscript.sleep 7000
shell.run "TriggerClick.bat", 0

wscript.sleep 10000
shell.sendkeys "{PGDN}"
wscript.sleep 1000
shell.sendkeys "{TAB}"
wscript.sleep 100
shell.sendkeys "{TAB}"
wscript.sleep 100
shell.sendkeys "{ENTER}"

wscript.sleep 2000
shell.run "https://youtu.be/dQw4w9WgXcQ", 2

wscript.sleep 6000
shell.run "RandomAd.vbs"

wscript.sleep 15000
shell.sendkeys "^{ESC}"

wscript.sleep 15000
shell.sendkeys "{PGUP}"
wscript.sleep 5000
shell.sendkeys "{PGDN}"
wscript.sleep 5000
shell.sendkeys "{PGUP}"
wscript.sleep 1000
shell.run "ShakerRunner.bat", 0
shell.sendkeys "{PGDN}"
wscript.sleep 800
shell.sendkeys "{PGUP}"
wscript.sleep 500
shell.sendkeys "{PGDN}"
wscript.sleep 500
shell.sendkeys "{PGUP}"
wscript.sleep 250
shell.sendkeys "{PGDN}"
wscript.sleep 200
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
'shell.sendkeys "(% ) (R)"
wscript.sleep 75
shell.sendkeys "(% ) (M)"
wscript.sleep 100
shell.sendkeys "{LEFT}"
wscript.sleep 2000

wscript.sleep 3000
shell.run "taskkill /im powershell.exe -f", 0
shell.popup "ALERT: Windows Defender has spotted a suspicious file on your computer, failing to remove it may result in binary exploitation of this device. Do you wish to attempt a scan?", 10,"Windows Defender: Warning",vbExclamation+vbSystemModal+vbYesNo
shell.popup "TROJAN DETECTED. Windows Defender has detected an infected file on your PC. Attempting to remove." & vbCrLf & "DO NOT shutoff your PC.", 10,"Windows Defender: CRITICAL",vbCritical+vbSystemModal
shell.run "Matrix.bat"
wscript.sleep 400
shell.run "taskkill /im cmd.exe -f", 0

' TRANSITION
shell.run "PHASE-Dictator.vbs", 0
'-----------

wscript.quit

' Original Creation Date: 12/5/2019 11:22 AM '