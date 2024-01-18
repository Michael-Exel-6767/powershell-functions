# https://stackoverflow.com/questions/26993101/switching-between-different-jdk-versions-in-windows
$jdk="C:\Users\exel\.jdks\openjdk-21.0.1"
set "JAVA_HOME" $jdk
setx "JAVA_HOME" $jdk

$JAVA_HOME=$jdk
$env:JAVA_HOME=$jdk
$Env:Path +=";$jdk\bin"

# sicherstellen, dass JAVA_HOME/bin/java gesetzt

java -version

gcm java

function jdk-17 {
    Write-Host trying to activate Java 17"
    #@echo off
    $Env:JAVA_HOME= "C:\Users\exel\.jdks\openjdk-21.0.1"
    $Env:Path="$Env:JAVA_HOME\bin;$Env:Path"
    Write-Host "JAVA_HOME="$Env:JAVA_HOME"

}