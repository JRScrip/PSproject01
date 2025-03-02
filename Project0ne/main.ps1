#PSWindowsOperating System Project

<# Write-Host "Start Now"

for ($i = 0; $i -lt $array.Count; $i++) {
    <# Action that will repeat until the condition is met 
    Write-Host $i
} 
#>

$num1 =10
$num2 =20

$sum = $num1 + $num2

Write-Host "The sum of two numbers is: $sum"
<# Arrays in powershell#>
$computer = @("Brand","Tag","ram")

Write-Host $computer[3]

Get-PSDrive | Format-Table root, CurrentLocation