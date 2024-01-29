##### IMPORTANT ###################
#    DO NOT MODIFY THIS SCRIPT    #
###################################

$pwHash = "C9-7F-06-94-16-2F-76-52-42-5C-B4-94-A1-DD-F5-5E"
$md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8=new-object -TypeName System.Text.UTF8Encoding
 
function login()
{
    Param(
        [Parameter(mandatory=$true)]
        [String]$username,[String]$password)

    $hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($password)))
    if($username-eq "Luke" -and $hash -eq "$pwHash")
    {
        return "Access Granted"
    }
    else
    {
        return "Access Denied" 
    }
}

login -username $args[0] -password $args[1]
