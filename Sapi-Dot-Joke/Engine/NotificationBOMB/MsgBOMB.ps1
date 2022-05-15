function Error{
    param(
        $Message = '',
        $Title = 'ERROR',
        $Location = '100,100'
    )

function ClearAndClose()
 {
    $Timer.Stop(); 
    $form.Close(); 
    $form.Dispose();
    $Timer.Dispose();
    $Script:CountDown=5
 }

 Function Timer_Tick()
 {

         --$Script:CountDown
         if ($Script:CountDown -lt 0)
         {
            ClearAndClose
         }
 }
    Add-Type -AssemblyName System.Windows.Forms
    $form = New-Object system.Windows.Forms.Form
    $form.StartPosition = 'Manual'
    $form.Location = New-Object System.Drawing.Size($x, $y)
    $form.Text = $Title
    $label =  [System.Windows.Forms.Label]::New()
    $form.Controls.Add($label)
    $image = [system.drawing.image]::FromFile("Error.PNG")
    $icon = New-Object system.drawing.icon ("favicon.ico")
    $form.icon = $icon
    $form.BackgroundImage = $image
    $form.BackgroundImageLayout = "None"
    $label.BackColor = "Transparent"
    $form.Width = 281
    $form.Height = 170
    $form.topmost = $true
    $form.FormBorderStyle = 'FixedDialog'
    $form.minimizebox = $false
    $form.maximizebox = $false
    $label.Dock = 'Fill'
    $label.Text = $Message
    $Timer = New-Object System.Windows.Forms.Timer
    $Timer.Add_Tick({ Timer_Tick})
    $Timer.Interval = 500
    $Script:CountDown = 0
    $Timer.Start()
    $form.ShowDialog()
}
function Information{
    param(
        $Message = '',
        $Title = 'Notification',
        $Location = '100,100'
    )

function ClearAndClose()
 {
    $Timer.Stop(); 
    $form.Close(); 
    $form.Dispose();
    $Timer.Dispose();
    $Script:CountDown=5
 }

 Function Timer_Tick()
 {

         --$Script:CountDown
         if ($Script:CountDown -lt 0)
         {
            ClearAndClose
         }
 }
    Add-Type -AssemblyName System.Windows.Forms
    $form = New-Object system.Windows.Forms.Form
    $form.StartPosition = 'Manual'
    $form.Location = New-Object System.Drawing.Size($v, $t)
    $form.Text = $Title
    $label =  [System.Windows.Forms.Label]::New()
    $form.Controls.Add($label)
    $image = [system.drawing.image]::FromFile("Information.PNG")
    $icon = New-Object system.drawing.icon ("favicon.ico")
    $form.icon = $icon
    $form.BackgroundImage = $image
    $form.BackgroundImageLayout = "None"
    $label.BackColor = "Transparent"
    $form.Width = 281
    $form.Height = 170
    $form.topmost = $true
    $form.FormBorderStyle = 'FixedDialog'
    $form.minimizebox = $false
    $form.maximizebox = $false
    $label.Dock = 'Fill'
    $label.Text = $Message
    $Timer = New-Object System.Windows.Forms.Timer
    $Timer.Add_Tick({ Timer_Tick})
    $Timer.Interval = 1000
    $Script:CountDown = 0
    $Timer.Start()
    $form.ShowDialog()
}
function Exclamation{
    param(
        $Message = '',
        $Title = 'Notification',
        $Location = '100,100'
    )

function ClearAndClose()
 {
    $Timer.Stop(); 
    $form.Close(); 
    $form.Dispose();
    $Timer.Dispose();
    $Script:CountDown=5
 }

 Function Timer_Tick()
 {

         --$Script:CountDown
         if ($Script:CountDown -lt 0)
         {
            ClearAndClose
         }
 }
    Add-Type -AssemblyName System.Windows.Forms
    $form = New-Object system.Windows.Forms.Form
    $form.StartPosition = 'Manual'
    $form.Location = New-Object System.Drawing.Size($z, $w)
    $form.Text = $Title
    $label =  [System.Windows.Forms.Label]::New()
    $form.Controls.Add($label)
    $image = [system.drawing.image]::FromFile("Exclamation.PNG")
    $icon = New-Object system.drawing.icon ("favicon.ico")
    $form.icon = $icon
    $form.BackgroundImage = $image
    $form.BackgroundImageLayout = "None"
    $label.BackColor = "Transparent"
    $form.Width = 325
    $form.Height = 170
    $form.topmost = $true
    $form.FormBorderStyle = 'FixedDialog'
    $form.minimizebox = $false
    $form.maximizebox = $false
    $label.Dock = 'Fill'
    $label.Text = $Message
    $Timer = New-Object System.Windows.Forms.Timer
    $Timer.Add_Tick({ Timer_Tick})
    $Timer.Interval = 1000
    $Script:CountDown = 0
    $Timer.Start()
    $form.ShowDialog()
}
while($true){
$longMsg = @'
'@
$x = (1..1630 | Get-Random -Count 1)
$y = (1..900 | Get-Random -Count 1)
$z = (1..1630 | Get-Random -Count 1)
$w = (1..900 | Get-Random -Count 1)
$v = (1..1630 | Get-Random -Count 1)
$t = (1..900 | Get-Random -Count 1)
Information -Location $x,$y
Error -Location $z,$w
Exclamation -Location $v,$t
}