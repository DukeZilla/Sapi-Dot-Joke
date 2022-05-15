Set Sound = CreateObject("WMPlayer.OCX.7")
on error resume next
Sound.URL = "Grieg - In the Hall of the Mountain King.mp3"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
