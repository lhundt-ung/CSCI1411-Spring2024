# If branch to see if SSN exists in string
$ssn = 'This is my SSN: 123-45-6789'
if($ssn -match '\d\d\d-\d\d-\d\d\d\d'){
    Write-Host "This string contains a SSN"
}

