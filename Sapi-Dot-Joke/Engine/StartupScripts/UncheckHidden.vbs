'Anti Virus may block this script.
'This script only turns off the "show hidden" option

On Error Resume Next
Hidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
Set Sh = WScript.CreateObject("WScript.Shell")
St = Sh.RegRead(Hidden)
If St = 1 Then
Sh.RegWrite Hidden, 2, "REG_DWORD"
Else
wscript.quit
End If
sh.run "QuickMin.bat", 0
wscript.sleep 3200
sh.sendkeys "{F5}"
wscript.sleep 1000
sh.run "taskkill /im cmd.exe -f", 0

'Original Creation Date: 1/18/2020 11:20 AM