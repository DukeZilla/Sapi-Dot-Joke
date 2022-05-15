Option Explicit
Dim browser, shell
on error resume next

Set shell = wscript.createobject("wscript.shell")
Set browser = CreateObject("InternetExplorer.Application")

browser.Navigate "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.funcage.com%2Fblog%2Fwp-content%2Fuploads%2F2013%2F08%2FGlamour-Shots-Gone-Wild-021-550x337.jpg&f=1&nofb=1"
browser.toolbar=0
browser.statusbar=0
browser.resizable=0
browser.height=140
browser.width=100
browser.top=325
browser.left=810

shell.run "MinAll.bat", 0
wscript.sleep 2500
browser.visible=1
shell.popup "Is he sexy?", 5, "Ad: LGBT",vbSystemModal+vbYesNo
shell.popup "Do you want him?", 5, "Ad: LGBT",vbSystemModal+vbYesNo
shell.popup "Well get your ass over here and get your homo on!" & vbCrLf & vbCrLf & "www.iamgay.com", 5, "Ad: LGBT",vbSystemModal
wscript.sleep 5000
shell.run "taskkill /im iexplore.exe -f", 0
wscript.quit

' Original Creation Date: 1/20/2020 9:22 PM '