Option Explicit
Dim browser, shell
on error resume next

Set shell = wscript.createobject("wscript.shell")
Set browser = CreateObject("InternetExplorer.Application")

browser.Navigate "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F2.bp.blogspot.com%2F-siLvriZ-290%2FThHgg8UcKjI%2FAAAAAAAAACI%2FNtR1NKtpBxE%2Fs1600%2Fhamilton-watches.jpg&f=1&nofb=1"

browser.toolbar=0
browser.statusbar=0
browser.resizable=0
browser.height=170
browser.width=80
browser.top=325
browser.left=780

shell.run "MinAll.bat", 0
wscript.sleep 2500
browser.visible=1
wscript.sleep 100
shell.appactivate "Internet Explorer"
shell.popup "Check out this watch!", 5, "Ad: Hamilton Watches",vbSystemModal
shell.popup "Only $199!!", 5, "Ad: Hamilton Watches",vbSystemModal
shell.popup "In a watch store near you!!!" & vbCrLf & vbCrLf & "www.hamiltonwatches.com", 5, "Ad: Hamilton Watches",vbSystemModal
wscript.sleep 5000
shell.run "taskkill /im iexplore.exe -f", 0
wscript.quit