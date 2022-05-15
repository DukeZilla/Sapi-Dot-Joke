Set shell=CreateObject("wscript.shell")
Shell.Run("calc.exe")
wscript.sleep 2500
shell.appactivate "calc.exe"