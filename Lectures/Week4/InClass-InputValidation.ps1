$EmailRegex = '^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$'

$Email = Read-Host "Email address: "

$DidItMatch = $Email -match $EmailRegex
if ($DidItMatch) 
{
    Write-Host "Email address is valid"
}
else 
{
    Write-Warning "Email not match, try again"
}