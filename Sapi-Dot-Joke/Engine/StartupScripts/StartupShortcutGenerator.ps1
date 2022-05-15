$file = pwd
cd \
cd "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$Startup = pwd 
cd \
cd $file
echo $Startup > DirectoryPath.txt
exit
