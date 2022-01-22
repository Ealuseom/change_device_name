$type = 'GS'
$name = 'Test'
$counter = Get-Content C:\_repos\Arbeit\Change_Device_Name\counter.txt

$i = [System.Decimal]::Parse($counter)
$i++
$formatted = '{0:d2}' -f [int]$i
Set-Content C:\_repos\Arbeit\Change_Device_Name\counter.txt $formatted
$device_name = "$type-$name-$formatted"
Write-Host $device_name
#Rename-Computer -NewName $device_name -Force