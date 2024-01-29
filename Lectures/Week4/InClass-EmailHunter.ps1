#Script: Extract all Email addresses from a webpage
#REGEX lance.hundt@ung.edu, lance@gmail.com, etc...
$emailRegex = "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|`"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*`")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])"
$matchCount = 0

#DATA in
$webpage = Invoke-WebRequest "https://ung.edu/landing/ung-contact-information.php"
$webpageArray = $webpage.RawContent.Split("`r`n")

#Parsing line by line
foreach ($line in $webpageArray) 
{
  #Quickest way to display only matches
  #$extracted = [regex]::match($line, $emailRegex).Value
  $extracted = Select-String -InputObject $line -Pattern $emailRegex

  if ($extracted.Matches) 
  {
    Write-Host $extracted.Matches
    $matchCount = $extracted.Matches.Count + $matchCount
  }
}

Write-Host "Found $matchCount email addresses in webpage!"
