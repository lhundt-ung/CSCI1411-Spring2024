### Slide 4 ###
# Show Interactive vs Script Code


### Slide 6 ###
# Show Powershell ISE/VS Code

### Slide 9 See Variables .ps1 file ###

### Slide 10 ###
Get-Command
Get-Process
Get-HotFix
Get-Help #<CMDLET>


### SLIDE 11 ###
$commands = Get-Command
$commands.Count
#Note how many are available

$verbs = Get-Verb
$verbs.Count



### SLIDE 12 ###
Get-Process
Get-Process | Where-Object {$_.Name -like "p*"}


Get-Process
Get-Process | Select ProcessName
Get-Process | ConvertTo-Html Processes.html
Get-Process | Export-CSV Processes.csv





### Additional Examples ###
https://blog.netwrix.com/2018/10/04/powershell-variables-and-arrays/