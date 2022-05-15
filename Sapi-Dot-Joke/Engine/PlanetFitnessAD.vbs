Option Explicit
Dim browser, shell
on error resume next

Set shell = wscript.createobject("wscript.shell")
Set browser = CreateObject("InternetExplorer.Application")

browser.Navigate "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthumbs.dreamstime.com%2Fz%2Ffunny-man-posing-shirtless-showing-his-body-isolated-white-background-32515477.jpg&f=1&nofb=1"

browser.toolbar=0
browser.statusbar=0
browser.resizable=0
browser.height=200
browser.width=180
browser.top=305
browser.left=800

shell.run "MinAll.bat", 0
wscript.sleep 2500
browser.visible=1
shell.popup "Wanna be ripped like him?", 5, "Ad: Planet Fitness",vbSystemModal+vbYesNo
shell.popup "Does he scare you?", 5, "Ad: Planet Fitness",vbSystemModal+vbYesNo
shell.popup "Well come to a Planet Fitness near you and" & vbCrLf & "get yourself shreded like Freddy Couger's claws on steroids!" & vbCrLf & vbCrLf & "www.planetfitness.com", 10, "Ad: Planet Fitness",vbSystemModal
wscript.sleep 5000
shell.run "taskkill /im iexplore.exe -f", 0
wscript.quit

' Original Creation Date: 1/20/2020 9:15 PM '