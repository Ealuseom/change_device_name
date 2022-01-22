$name = New-Object PSObject -Property @{
    type          = "NB"
    Room          = 211
    counterstring = Get-Content C:\Users\Admin\Desktop\counter.txt
    counterint    = [int]$name.counterstring
}
Write-Host $name.type - $name.room - $name.counterstring
$name.counterint = $name.counterint + 01
Set-Content C:\Users\Admin\Desktop\counter.txt $name.counterint
