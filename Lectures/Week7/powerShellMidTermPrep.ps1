#1. Retreive the 50 of the most recent security logs. Then store in variable
$logs = Get-WinEvent Security -MaxEvents 50

#2. From the variable in number 1, display all InstanceID's not equal to 5379. 
# Store results in second variable

$logs = $logs | Where-Object {$_.Id -ne "5379"}

#3. Write a loop that iterates the array variable in #2
# Print only the InstanceID  for each object that contains the word ADMINISTRATOR in the message
$count = 0
foreach($item in $logs){
    if($item.Message -like "*ADMINISTRATOR*"){
        Write-Host $item.Message
        $count++
    }
}

Write-Host $count


function addNumbers($firstNumber,$secondNumber){
    $sum = $firstNumber + $secondNumber
    Write-Host $sum
}

$a = 5
$b = 10

addNumbers($a,$b)
addNumbers(5,10)
addNumbers $a $b
addNumbers -firstNumber $a -secondNumber $b