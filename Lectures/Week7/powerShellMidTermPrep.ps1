#1. Retreive the 50 of the most recent security logs. Then store in variable
$logs = Get-WinEvent Security -MaxEvents 50

#2. From the variable in number 1, display all InstanceID's not equal to 5379. 
# Store results in second variable
$logs = $logs | Where-Object{$_.Id -ne "5379"}
$logs.length

#3. Write a loop that iterates the array variable in #2
# Print only the InstanceID  for each object that contains the word ADMINISTRATOR in the message
foreach($item in $logs){
    if($item.Message -like "*ADMINISTRATOR*"){
        Write-Host $item.Id
    }
}