### How can we print something to the console?
Write-Host "Hello Class"

### Quick Review on Data Types

$var1 = 50
$var2 = "Go Nighthawks!"
$var3 = $False
$var4 = 3.14
$var5 = $("UNG","Nigel",22,$True)
$var5.GetType()


### Search for a CMDLET that prompts and reads user input?
$userInput = Read-Host -Prompt "Enter a number?"
Write-Host "The number you entered was: $userInput"