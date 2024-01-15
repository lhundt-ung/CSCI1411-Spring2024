#2. Write a function to get two numbers 
#from user input and add them together using arguments
[int]$userInput1 = Read-Host -Prompt "Enter first number "
[int]$userInput2 = Read-Host -Prompt "Enter second number "

function addNumber($x,$y){
    $z = $x + $y
    Write-Host $z
}

addNumber $userInput1 $userInput2