$List = @(
"https://s.hdnux.com/photos/01/02/24/50/17386019/3/rawImage.jpg",
"https://wallpapertops.com/walldb/original/8/a/e/470244.jpg",
"https://hddesktopwallpapers.in/wp-content/uploads/2015/08/ferret-funny-wallpaper.jpg",
"https://hddesktopwallpapers.in/wp-content/uploads/2015/09/labrador-wallpaper-funny.jpg",
"https://i.pinimg.com/originals/12/26/ee/1226ee007e9b9d904b6caef9aac47539.jpg",
"https://nexter.org/wp-content/uploads/2019/07/weird-stock-images-photos-funny-pic12.jpg",
"https://www.funcage.com/blog/wp-content/uploads/2013/12/20-Extremely-Weird-Stock-Photographs015.jpg"
)
$Random = $List | Get-Random
iwr -Uri $Random -OutFile c:\windows\temp\b.jpg;sp 'HKCU:Control Panel\Desktop' WallPaper 'c:\windows\temp\b.jpg';$a=1;do{RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True;sleep 1}while($a++-le59)
cd \
cd C:\Windows\Temp
remove-item b.jpg
exit

# Credit to Hak5 for wallpaper change code #
# Original Creation Date: 12/14/2019 9:58  #