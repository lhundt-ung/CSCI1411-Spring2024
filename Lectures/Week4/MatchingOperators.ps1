#Matching Operators
#1. Which operator and statement would you use to find if the log file contains 85.115.32.185
$matchingStr = "85.115.32.185 - - [01/Jan/2017:04:05:15 -0800] GET / HTTP/1.1 200 10211"
if($matchingStr -like "*85.115.32.185*"){
    Write-Host "Match Found"
}
else{
    Write-Host "Not Found"
}

#2. See if string contains HTTP
if($matchingStr -like "*HTTP*"){
    Write-Host "Match Found"
}
else{
    Write-Host "Not Found"
}

#3. See if string doesn't contain 85.115.32.185?
if($matchingStr -notlike "*85.115.32.185*"){
    Write-Host "Match Found"
}
else{
    Write-Host "Not Found"
}