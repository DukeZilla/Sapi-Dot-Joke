Hidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
Set Sh = WScript.CreateObject("WScript.Shell")
St = Sh.RegRead(Hidden)
If St = 1 Then
Sh.RegWrite Hidden, 2, "REG_DWORD"
Else
wscript.quit
End If