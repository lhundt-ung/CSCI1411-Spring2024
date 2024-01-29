function piiChecker($msg){
    Write-Host "-----------------------"
    #Switch using Regex
    switch -regex ($msg)
    {
        '\d\d\d-\d\d-\d\d\d\d' {
            Write-Host 'message may contain a SSN' -ForegroundColor Yellow
            Write-Host $msg
        }
        '\d\d\d\d-\d\d\d\d-\d\d\d\d-\d\d\d\d' {
            Write-Host 'message may contain a credit card number' -ForegroundColor Blue
            Write-Host $msg
        }
        '\d\d\d-\d\d\d-\d\d\d\d' {
            Write-Host 'message may contain a phone number' -ForegroundColor Red
            Write-Host $msg
        }
    }
}

# Get data from csv file
$data = Get-Content .\employee.csv

#Iterate through each line and check if PII is present
foreach($line in $data){
    piiChecker $line
}