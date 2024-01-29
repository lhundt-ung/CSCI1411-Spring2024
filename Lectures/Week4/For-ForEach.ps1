#### Run to update console to the current directory ##############
# Must run the entire script first to work                       #
$Path = $PSScriptRoot                                            #
cd $Path                                                         #
##################################################################

#For and ForEach Examples

#1. What will happen here?
for($i = 0; $i -lt 100; $i=$i+1){ 
    Write-Host "i equals: $i" 
}

for($i = 0; $i -lt 100; $i++){ 
    Write-Host "i equals: $i" 
}

for($i = 0; $i -lt 100; $i=$i+5){ 
    Write-Host "i equals: $i" 
    if($i -eq 50){
        break
    }
}

#2. Search through  users.txt and return users with google.com email addresses
$users = Get-Content .\users.txt
foreach($user in $users){
    if($user -like "*google.com*"){
        Write-Host $user
    }
}

foreach($user in $users){
    if($user -like "*google.com*"){
        $userSplit = $user.split(",")
        #$userSplit.GetType()
        #$userSplit[0]
        $userSplit[-1]
        #Write-Host $user
    }
}



# 3. Find a cmdlet to get all running services that are currently running. 
# Store the findings in an array
Get-Service
$services = Get-Service | Where-Object {$_.Status -eq "Running"}

#Write a for/each loop that iterates through each service that 
# is running. Print out the name of the service as "Service: <Service_name>"
foreach($service in $services){
    Write-Host $service.Name
    #Stop-Service $service
}





## 4. ForLoop to parse out all .js files that run on the main website
$web = Invoke-WebRequest "https://ung.edu" -UseBasicParsing

#Split up raw content by lines
$webArr = $web.RawContent.Split("`r`n")

foreach($line in $webArr)
{ 
    if($line -like "*.js*")
    {Write-Host "$line"}
}
