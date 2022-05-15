$file = (pwd).path
# Create a Shortcut with Windows PowerShell
$TargetFile = "$file\ADVENTURE.vbs"
$ShortcutFile = "$file\ADVENTURE.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.WorkingDirectory = $file
$Shortcut.Save()

$TargetFile = "$file\ADVENTURE Timed.vbs"
$ShortcutFile = "$file\ADVENTURE Timed.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.WorkingDirectory = $file
$Shortcut.Save()

$TargetFile = "$file\ADVENTURE (In the hall of mountain king edition).vbs"
$ShortcutFile = "$file\ADVENTURE (In the hall of mountain king edition).lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.WorkingDirectory = $file
$Shortcut.Save()

cd ..
$Back = pwd
cd Engine
Move-Item "ADVENTURE.lnk" $Back
Move-Item "ADVENTURE Timed.lnk" $Back
Move-Item "ADVENTURE (In the hall of mountain king edition).lnk" $Back

## Original Creation Date: 1/10/2020 11:13 PM ##