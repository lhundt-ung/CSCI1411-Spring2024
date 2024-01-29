#While Loops

# What does Start-Sleep CMDLET do?
$x = $null

while ($x -ne "4") {
 $x = Read-Host -Prompt '2 + 2 =?'
 Start-Sleep 5
}


# What does $x-- do? 
# Describe what will happen when the loop is ran below
$x = 0
do { 
    Write-Host "X equals $x";$x++ } 
while ( $x -le 100 )






Another forloop
$x = 1,2,78,3
for($a = 0;$a -le $x.Count; $a++){
    Write-Host $x[$a]
}

#Do While/Do Until
do { 
    $count++
    $a++
    Write-Host $x[$a] 
    }
while ($x[$a] -ne 3) #Exits when statement is True

do { 
        $count++
        $a++ 
        Write-Host $x[$a] 
        } 
until ($x[$a] -eq 3) #exits when statement is False