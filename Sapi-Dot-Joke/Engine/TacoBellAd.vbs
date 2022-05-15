Option Explicit
Dim browser, shell
on error resume next

Set shell = wscript.createobject("wscript.shell")
Set browser = CreateObject("InternetExplorer.Application")

browser.Navigate "https://akns-images.eonline.com/eol_images/Entire_Site/2014128/rs_1024x759-140228134521-1024.Taco-Bell.jl.022814.jpg"
browser.toolbar=0
browser.statusbar=0
browser.resizable=0
browser.height=165
browser.width=150
browser.top=312
browser.left=900

wscript.sleep 3000
browser.visible=1
shell.popup "Is someone hungry for tacos?" & vbCrLf & vbCrLf & "Don't miss out on our irresistable Taco Wacko Bustdown deal!", 8, "Ad: Taco Bell",vbSystemModal
shell.popup "Dont wait... its only available for a limited time!" & vbCrLf & vbCrLf & "Tacobell.com/Delicioso", 5, "Ad: Taco Bell",vbSystemModal
wscript.sleep 4000
shell.popup "Hey are you still reading this?!", 5, "Ad: Taco Bell",vbSystemModal
wscript.sleep 5000
shell.run "taskkill /im iexplore.exe -f", 0
wscript.quit