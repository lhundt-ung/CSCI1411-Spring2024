#1. Write a function to get two numbers 
#from user input and add them together

function addNumber(){
    [int]$x = Read-Host -Prompt "Enter first number: "
    [int]$y = Read-Host -Prompt "Enter second number: "

    $z = $x + $y
    Write-Host $z
}

addNumber
