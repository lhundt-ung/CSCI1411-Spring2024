#Switch Operator

$userNumber = Read-Host -Prompt 'Menu System, Please select an option...'
Switch ($userNumber)
{
    1 { “1 - Match”}
    2 { “2 - Match”}
    3 { “3 - Match”}
    4 { “4 - Match”}
    Default { “No Match Found”}
}


#Behaves similar, using if statements instead. What is different?
$a = Read-Host -Prompt 'Enter a number'
if($a -eq 1){ “1 - Match”}
if($a -eq 2){ “2 - Match”}
if($a -eq 3){ “3 - Match”}
if($a -eq 4){ “4 - Match”}
if($a -ne 1 -and $a -ne 2 -and $a -ne 3 -and $a -ne 4){ “No Match Found”}
