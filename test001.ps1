 param (
    [string]$area = "CB",
    [Parameter(Mandatory=$true)][string]$subArea,
    [string]$password = $( Read-Host "Input password, please"
     )
 )

 Write-Output "$server - $username - $password"