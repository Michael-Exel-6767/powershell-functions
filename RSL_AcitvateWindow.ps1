Add-Type @"
  using System;
  using System.Runtime.InteropServices;
  public class SFW {
     [DllImport("user32.dll")]
     [return: MarshalAs(UnmanagedType.Bool)]
     public static extern bool SetForegroundWindow(IntPtr hWnd);
  }
"@


$h =  (get-process RAID).MainWindowHandle # just one notepad must be opened!
[SFW]::SetForegroundWindow($h)