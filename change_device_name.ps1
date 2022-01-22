$name = New-Object PSObject -Property @{
    type          = "NB"
    Room          = 211
    counterstring = Get-Content C:\_repos\Arbeit\Change_Device_Name\counter.txt
    #   counterint    = [int]$name.counterstring
}
Write-Host $name.counterstring
#$name.counterint = $name.counterint + 1
#Set-Content C:\Users\Admin\Desktop\counter.txt $name.counterint
if ($name.counterstring -lt 10) {
    $sugma = "", $name.counterstring
    $sugma -join "0"
    Set-Content C:\_repos\Arbeit\Change_Device_Name\counter.txt $sugma -join "0"
}