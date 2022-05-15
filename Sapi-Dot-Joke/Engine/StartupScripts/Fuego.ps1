$pwd = (pwd).path
Add-Type -AssemblyName System.Windows.Forms
$Form = New-Object system.Windows.Forms.Form
$Form.Location= New-Object System.Drawing.Size(-10,-31)
$Form.Size= New-Object System.Drawing.Size(2200,1400)
$Form.StartPosition = "Manual"
$Form.Visible=$false
$Form.Enabled = $true
$Form.BackColor = "Black"
$Form.Add_Shown({$Form.Activate()})

[reflection.assembly]::LoadWithPartialName("System.Windows.Forms")
$file = (get-item $pwd\Fire.gif)
$img = [System.Drawing.Image]::Fromfile($file);

[System.Windows.Forms.Application]::EnableVisualStyles();

$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Location = New-Object System.Drawing.Size(0,-95)
$pictureBox.Size = New-Object System.Drawing.Size(2000,2000)
$pictureBox.Image = $img
$Form.controls.add($pictureBox)

# $WaitForm.Topmost = $True

$rs = [Management.Automation.Runspaces.RunspaceFactory]::CreateRunspace()
$rs.Open()
$rs.SessionStateProxy.SetVariable("Form", $Form)
$data = [hashtable]::Synchronized(@{text=""})
$rs.SessionStateProxy.SetVariable("data", $data)
$p = $rs.CreatePipeline({ [void] $Form.ShowDialog()})
$p.Input.Close()
$p.InvokeAsync()

## Enter the rest of your script here while you want the form to display
$Form.Controls.Add($WaitBackGroundBox)
# $Form.Topmost = $True
[void] $Form.ShowDialog()
$WaitForm.close()
$rs.close()