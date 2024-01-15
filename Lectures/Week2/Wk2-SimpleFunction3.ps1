#3. Write a function to get two numbers from user input
# and add them together using argument. This time enforce numbers only and return the answer

$userInput4 = Read-Host -Prompt "Enter first number "
$userInput5 = Read-Host -Prompt "Enter second number "

function addNumber(){
    Param(
        [Parameter(Mandatory=$true)][int]$x,
        [Parameter(Mandatory=$true)][int]$y
    )

    $z = $x + $y
    Write-Host $z
    return $z
}

$whatwasreturned = addNumber $userInput4 $userInput5
Write-Host $whatwasreturned