Set shell = wscript.createobject("wscript.shell")
do
on error resume next

wscript.sleep 2000
shell.popup "Tired of getting these pop ups?" & vbCrLf & vbCrLf & "We got you covered...", 3, "Ad: Ad Blocker",vbSystemModal
shell.popup "Download our free adblocker and knock those bastards off the screen!" & vbCrLf & vbCrLf & "Visit us at BlockDemAds.com/YouHaveAVirus", 4, "Ad: Ad Blocker",vbSystemModal
shell.popup "So what are you waiting for? Go ahead... block them!", 3, "Ad: Ad Blocker",vbSystemModal
shell.popup "Click here to block now!", 1, "Ad: Ad Blocker",vbSystemModal
shell.popup "Click here to block now!", 1, "Ad: Ad Blocker",vbSystemModal
shell.popup "Click here to block now!", 1, "Ad: Ad Blocker",vbSystemModal
shell.popup "Click here to block now!", 1, "Ad: Ad Blocker",vbSystemModal
shell.popup "Click here to block now!", 5, "Ad: Ad Blocker",vbSystemModal
wscript.quit
loop