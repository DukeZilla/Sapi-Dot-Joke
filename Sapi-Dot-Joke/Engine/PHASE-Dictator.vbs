dim r, shell, fso, filename, Num, txt
set shell = wscript.createobject("wscript.shell")
set fso = wscript.createobject("Scripting.FileSystemObject")
on error resume next

filename = ("PHASE-2-Choice.cfg")
set txt = fso.OpenTextFile(filename,1)
txt.ReadLine(1)
Num = Trim(txt.ReadLine) 

Function PhaseChoice()
	If Num = "1" Then
	shell.run "PHASE-2.vbs"
	wscript.quit
		Else If Num = "2" Then
		shell.run """PHASE-2ii (Sapi Rap).vbs"""
		wscript.quit
			Else If Num = "3" Then
			shell.run """PHASE-2iii (Advertisement).vbs"""
			wscript.quit
			End If
		End If
	End If
End Function

If fso.FileExists(filename) then
	Call PhaseChoice()
End If

txt.close

randomize
r = int(rnd*3) + 1
select case r

    case 1
	shell.run "PHASE-2.vbs"
	
	case 2
	shell.run """PHASE-2ii (Sapi Rap).vbs"""

	case 3
	shell.run """PHASE-2iii (Advertisement).vbs"""
	
end select
wscript.quit