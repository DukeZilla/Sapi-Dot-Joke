Option Explicit

On Error Resume Next
Dim WSH, WshNtwk
Dim infoStr

Set WSH = WSCript.CreateObject("WScript.Shell")
Set WshNtwk = WScript.CreateObject("WScript.Network")

infoStr = "Update complete for " & WshNtwk.UserName & ", press Ok to complete the formatted desktop experience." & vbCrLf & vbCrLf & _
"Username :" & vbTab & WshNtwk.UserName & vbCrLf & _
"Computer Name :" & vbTab & Ucase(WshNtwk.ComputerName) & vbCrLf
WSH.popup infoStr, 300, "Update Completed",vbInformation+vbSystemModal
On Error Goto 0

'cleanup
Set WSH = Nothing
Set WshNtwk = Nothing

WScript.Quit