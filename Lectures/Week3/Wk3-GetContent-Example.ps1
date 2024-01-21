#Create example data file
1..100 | ForEach-Object { Add-Content -Path LineNumbers.txt -Value "This is line $_" }


# Verify file
Get-Content -Path .\LineNumbers.txt


#Get first 5 lines
Get-Content -Path .\LineNumbers.txt -TotalCount 5

#Get first 25 lines, What does this return
(Get-Content -Path .\LineNumbers.txt -TotalCount 25)[1]

#Get first 25 lines, then what does it return?
(Get-Content -Path .\LineNumbers.txt -TotalCount 25)[-1]
(Get-Content -Path .\LineNumbers.txt)[-1]

# What does tail retrieve
Get-Content -Path .\LineNumbers.txt -Tail 5


# Set-Content Example
$date = Get-Date
Set-Content .\LineNumbers.txt "$date - Start of My log"
Add-Content .\LineNumbers.txt "$date - End of My log"
Get-Content .\LineNumbers.txt

#What's the difference between add-content and set-content