$KeyShortcut = Add-Type -MemberDefinition @"
[DllImport("user32.dll")]
static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);
//WIN + CTRL + D: Create a new desktop
public static void CreateVirtualDesktopInWin10()
{
    //Key down
    keybd_event((byte)0x5B, 0, 0, UIntPtr.Zero); //Left Windows key 
    keybd_event((byte)0x11, 0, 0, UIntPtr.Zero); //CTRL
    keybd_event((byte)0x44, 0, 0, UIntPtr.Zero); //D
    //Key up
    keybd_event((byte)0x5B, 0, (uint)0x2, UIntPtr.Zero);
    keybd_event((byte)0x11, 0, (uint)0x2, UIntPtr.Zero);
    keybd_event((byte)0x44, 0, (uint)0x2, UIntPtr.Zero);
}
"@ -Name CreateVirtualDesktop -UsingNamespace System.Threading -PassThru
$KeyShortcut::CreateVirtualDesktopInWin10()
start-sleep 1
$KeyShortcut::CreateVirtualDesktopInWin10()
start-sleep 1
$KeyShortcut::CreateVirtualDesktopInWin10()
start-sleep 1
$KeyShortcut::createVirtualDesktopInWin10()
start-sleep 1
$KeyShortcut::CreateVirtualDesktopInWin10()
start-sleep 1