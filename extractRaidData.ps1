$date = Get-Date -format "yyyyMMdd_HHmm"
$myPath="Y:\Spiele\RSL\export\RaidExtractor\artifacts_${date}.json"
echo $myPath
&"C:\bin\RaidExtractor\Raid.Extractor.exe" -g -o "$myPath" 