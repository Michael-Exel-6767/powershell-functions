Set-Window -ProcessName Raid -X 0 -Y 0 -Width 1280 -Height 720 -Passthru



# Set-Window -ProcessName Raid -X 0 -Y 0 -Width 1050 -Height 1380 -Passthru

# https://devblogs.microsoft.com/powershell/get-windowtitle-ps1/
# Get-Process |where {$_.mainWindowTItle} |format-table id,name,mainwindowtitle –AutoSize


# Get-Process | Where-Object {$_.name -eq "Raid" -and $_.mainWindowTitle }