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

Write-Host $computer[0]
Write-Host $computer[1]

Get-PSDrive | Format-Table root, CurrentLocation

#Modules
#Making your own modules
#PSgallery

#Poshue module





const Player1 = {
}


const Player2 = {
 'name' :  

}

#Get-hostnames
# $ouDN = "OU=Samsung UK,OU=Production,OU=Computers,OU=CEB - Cebu,OU=Centers,OU=AppSense,DC=teleperformanceusa,DC=com"
$computers = Get-ADComputer -Filter * -SearchBase "OU=Kogan,OU=Production,OU=Computers,OU=CEB - Cebu,OU=Centers,OU=AppSense,DC=teleperformanceusa,DC=com" | Select-Object name
$computers | Export-Csv -Path "C:\Users\coronel.223\Documents\kogan.csv" -NoTypeInformation

Get-CimInstance -ClassName Win32_ThreadTrace 
Get-CimInstance -ClassName Win32_LogicalDisk
 Get-CimInstance -ClassName Win32_OperatingSystem

# Lets make an error

Try{
    function get-directorycount {
        param(
            $directory
        )
        #get the list of dirs
     write-host  "there are $($dirs.count) folders in this folder"  -foregroundColor Blue -Background-color cyan
    }
    get-directorycount -directory "c:\"
}
catch{
    write-host "Directory does not exist"
    Write-host $_.Exception.Message -ForegroundColor Red #$_. is equal to $PSItem
}

#Another Example

<# Write a program that will ask the user to enter a number of names. In accordance the number entered , let the program accept number of names accordingly & repeatedly.Display the entered names as output as well 
as the number of loops #>

# Ask for the number of names
$NumNames = Read-host "Enter the number of Names :"

$names = @()
#loop to get the names

 for($i= 1 ; $i -le $NumNames; $i++){
 $name = Read-host "Please enter name $i"
 $names += $name
 }
 
#Display the entered names

Write-Host "`n You entered the following names:"
Write-Host
for($i = 0; $i -lt $names.length; $i++){
Write-Host "$($i+1).$($names[$i])"
}

#Display the total number of loops
Write-Host "`nTotal loops: $NumNames"


<# create a powershell program to 
   Install available updates in windows
   Get current user log-on to the computer
   Delete users profile in users and also in registry
   Get-list for [RAM Size, storage, windows version, CPU Cores,]
   Uninstall application in Appwiz
#>

