<#
see 
   https://github.com/MScholtes/PSVirtualDesktop
   https://stackoverflow.com/questions/27839668/get-window-title-via-mouse-cursor-in-powershell-wasp
#>

Add-Type -TypeDefinition @"
using System; 
using System.Runtime.InteropServices;
public class Utils
{ 
    public struct RECT
    {
        public int Left;        
        public int Top;         
        public int Right;       
        public int Bottom;     
    }

    [DllImport("user32.dll")]
    public static extern bool GetWindowRect(
        HandleRef hWnd,
        out RECT lpRect);
}
"@

#$OldDesktop = Get-CurrentDesktop
#"Number of virtual desktops: $(Get-DesktopCount)"
#"Name of current desktop: $(Get-DesktopName($OldDesktop))"

Add-Type -AssemblyName System.Windows.Forms
$p = [Windows.Forms.Cursor]::Position
Get-Process | %{ 
  #  [int32[]]$handles
    if ($_.MainWindowHandle)
    {
        $o = New-Object -TypeName System.Object            
        $href = New-Object -TypeName System.RunTime.InteropServices.HandleRef -ArgumentList $o, $_.MainWindowHandle            

        $rect = New-Object utils+RECT            
        [Void][Utils]::GetWindowRect($href, [ref]$rect)

        if ($p.X -ge $rect.Left -and $p.X -le $rect.Right -and 
            $p.Y -ge $rect.Top -and $p.Y -le $rect.Bottom
           )
        {
            try {
                $title="$_.MainWindowTitle"
                if ((Get-DesktopFromWindow ($_.MainWindowHandle)).IsVisible)
                {
                    $_.MainWindowTitle + " - " + $_.Handle
                }
            }
            catch {}
           
        }
    }

}