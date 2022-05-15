'SetMousePosition
'Error may display saying "Excel application not found."
On Error Resume Next

Dim Excel: Set Excel = WScript.CreateObject("Excel.Application")
do

Dim x: x = 0

Dim y: y = 0

Excel.ExecuteExcel4Macro "CALL(""user32"",""SetCursorPos"",""JJJ""," & x & "," & y & ")"

'SetMousePosition

loop

'Original Creation Date: 1/14/2020 4:41 PM