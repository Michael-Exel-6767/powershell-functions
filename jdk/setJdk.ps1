# https://stackoverflow.com/questions/26993101/switching-between-different-jdk-versions-in-windows

function setJdk {
    param (
        [string]$pathToJdk
    )
    Write-Host "pathToJdk=$pathToJdk"

    try {

        $oldJavaDir = (Get-Command java.exe | Split-Path -Parent).Trim("`n")

    
        echo "oldJavaDir=>"$oldJavaDir"<"

        # Get the current Path variable
        $currentPath = $env:Path

        # Display the original Path variable
        Write-Output "Original Path variable: $currentPath"

        # Replace a specific substring in the Path variable
        # $newString = $jdk  # Replace this with the new string you want
        $currentPath = $currentPath -replace $oldJavaDir, $pathToJdk


        # Set the updated Path variable
    


    }
    catch {
        echo "Jdk-Path not set"
        $currentPath = "$jdk;$env:Path"
        Write-Output "currentPath= $env:Path"   
    }
    finally {
        $env:Path = $currentPath


        # Display the updated Path variable
        Write-Output "Updated Path variable: $env:Path"  
    }
}


function jdk-17 {
    $jdk="C:\Users\exel\.jdks\corretto-17.0.7\bin"
    setJdk -pathToJdk $jdk
}

function jdk-21 {
    $jdk="C:\Users\exel\.jdks\openjdk-21.0.1\bin"
    setJdk -pathToJdk $jdk
}

# $jdk="C:\Users\exel\.jdks\corretto-17.0.7\bin"
