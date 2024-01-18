function AdjustWindow {

#[cmdletbinding(DefaultParameterSetName='Name')]

Param (
    [parameter(Mandatory=$False,
        ValueFromPipelineByPropertyName=$True, ParameterSetName='Name')]
    [string]$ProcessName='*',
    [parameter(Mandatory=$True,
        ValueFromPipeline=$False,              ParameterSetName='Id')]
    [int]$Id,
    [int]$X,
    [int]$Y,
    [int]$Width,
    [int]$Height
)
BEGIN{
    echo "Get-Process"
    $PSF =  ($env:PS_FUNCTIONS)
    . $PSF/Move_Window.ps1
    #$ProcessName = (Get-Process | Where-Object {$_.MainWindowTitle -like "Raid: Shadow Legends*"}) | Select-Object Name    
    Set-Window -ProcessName $ProcessName -X $X -Y $Y -Width $Width -Height $Height -Passthru
}

}

function Install-Software { Write-Host 'I installed some software. Yippee!' }



#AdjustWindow -ProcessName Raid -X 1600 -Y 10 -Width 1123 -Height 870


# Angepasst ans RSL Fenster
#AdjustWindow -ProcessName Raid -X 0 -Y 0 -Width 1107 -Height 635

AdjustWindow -ProcessName Raid -X 0 -Y 0 -Width 1280 -Height 720

