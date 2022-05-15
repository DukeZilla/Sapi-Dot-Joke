$file = (pwd).path
# Create a Shortcut with Windows PowerShell
$TargetFile = "$file\LockOutScript.vbs"
$ShortcutFile = "$file\LockOutScript.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.WorkingDirectory = $file
$Shortcut.Save()
exit
