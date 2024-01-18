# https://stackoverflow.com/questions/26993101/switching-between-different-jdk-versions-in-windows

$jdk="C:\Users\exel\.jdks\corretto-17.0.7"

Write-Host "trying to activate Java 17"
#@echo off
$Env:JAVA_HOME= "$jdk"

$Env:Path="$Env:JAVA_HOME\bin;$Env:Path"
Write-Host "JAVA_HOME="$Env:JAVA_HOME

java -version

gcm java