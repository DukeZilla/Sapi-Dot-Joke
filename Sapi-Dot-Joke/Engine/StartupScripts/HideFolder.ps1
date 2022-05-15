$Back = pwd
$Clean = Get-ChildItem Cleanser.bat
cd ..
cd ..
cd ..

$f=get-item Sapi-Dot-Joke -Force
$f.attributes="Hidden"

echo '$a = new-object -comobject wscript.shell;
$a.popup("Refreshing...", 3,"Notification")
start-sleep 2
stop-process -name cmd -f
start-sleep 2
remove-item Sapi-Dot-Joke -recurse -force -ErrorAction Silentlycontinue
remove-item Cleanser.bat -recurse -force
remove-item PartyStarta.bat -recurse -force -ErrorAction Silentlycontinue
remove-item Estart.bat -recurse -force -ErrorAction Silentlycontinue
remove-item Cleanup.ps1 -recurse -force
start explorer
stop-process -name cmd -f
exit' > Cleanup.txt

$g=get-item Cleanup.txt -Force
$g.attributes="Hidden"

start-sleep 1

ren "Cleanup.txt" "Cleanup.ps1"

$Clean | Copy-Item

$g=get-item Cleanser.bat -Force
$g.attributes="Hidden"

remove-item Cleanup.txt -recurse -force

cd $Back
ren "Cleanser.bat" "Cleanser1.bat"

<# Original Creation Date: 1/18/2020 11:58 AM #>