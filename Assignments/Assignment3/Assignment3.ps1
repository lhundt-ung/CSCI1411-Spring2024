<#
.SYNOPSIS
    Assignment 3 - Parsing text files
.DESCRIPTION
    Our Security monitoring systems have alerted us of a suspicious IP address that is 
    attempting to access multiple systems on the network. This assignment we will be examing 
    two log files with over 300K lines of data. We will use our techniques learned in class to 
    find critical information for our investigation. And hopefully no sensitive data was stolen.
.INPUTS
    Access.log, Auth.log
.OUTPUTS
    Data Found
.NOTES
    Version:        1.0
    Author:         <Your Name>
    Creation Date:  
    References: Select-String: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-6
         Write-Host: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-6
.EXAMPLE
    Assignment3.ps1
#>

#----------------------------------------------------------[Declarations]----------------------------------------------------------
$AssignmentNumber = "3"
#--------------------------------------[Helping Functions]--------------------------------------
# DO NOT MODIFY
# EXAMPLE USECASE: howMany $results
function howMany($obj)
{
    Write-Host "Number of hits: " $obj.count
    return $obj.count
}

# DO NOT MODIFY
# EXAMPLE USECASE: howMany -cc 5 -ssn 15
# cc is the number of Credit Cards Stolen
# ssn is the number of Social secuirty numbers stolen
function incidentCost($cc,$ssn)
{
    $totalUsers = $cc + $ssn
    
    ## Credit Card's lost
    Write-Host "Estimated hacker's stolen credit card data sale: " ($cc*5) " USD"

    ## SSN's lost
    Write-Host "Estimated hacker's stolen Social Security Number data worth: " ($ssn*1) " USD"

    ## Business cost to response of a breach
    ## https://www.pandasecurity.com/mediacenter/security/cost-of-a-data-breach/
    Write-Host "Estimated loss and impact of the breach: " ($totalUsers*150) " USD"

    return $totalUsers*150
}

#--------------------------------------[Assignment Code]--------------------------------------
##### IMPORTANT ############################################################################################
# Make sure your shell window is currently in the Assignment3 folder.                                      #
# For example, you should see PS C:\Users\administrator\CSCI1411-Fall2023\Assignments\Assignment3>         #       
# One way is to run "cd C:\Users\administrator\CSCI1411-Fall2023\Assignments\Assignment3" before starting  #
# the assignment                                                                                           #
# Run ls to verify you see all 1 file and two directories                                                  #
# Assignment3.ps1, Logs, and Data                                                                          #
#
# Alternatively, go ahead and run the entire script. The code below will auotmatically update your         #
# terminal to the correct location before you begin the assignment :)                                      #
#                                                                                                          #
###################### DO NOT MODIFY #############################
# (Updates Console to location of Script File)                   #
$Path = $PSScriptRoot                                            #
cd $Path                                                         #                                                 
##################################################################
#                                                                                                          #
#                                                                                                          #
############################################################################################################



## 1. Search all files located in your .\Logs folder.  
## You will need to find all entries with "187.76.80.202". Follow the instructions below...
## - Create a variable called $findings
## - Assign the output of Select-String CMDLET to $findings
## - Select-String should find all of the matches for 187.76.80.202
## - You will use -Path and -Pattern Parameters
## - Next, output your findings by simply writing your variable $findings out on the next line
## HINT: Class slides and lab examples from class may help.
## YOUR CODE BELOW HERE




# 2. Once complete, lets confirm the number of matches.
## A helper function called howMany has been provided to you.
## howMany takes one argument. See above section called Helper functions for reference
## HINT: Your returned count should be: 475
## YOUR CODE BELOW HERE




## 3. To make it easier for searching in the future, lets build a function!
## The structure of the function has been provided below.
## Your job is to complete the function in areas that say "YOUR CODE BELOW HERE"
## Example of Function: logSearcher -dir "C:\Users\Student\Documents\*" -text "SAMPLE" -showLogs $True
## this will also work: logSearcher ".\Documents\*" "SAMPLE" $True
function logSearcher($dir,$text,$showLogs)
{
    ## Create a variable called $results to store your results
    ## Set $results equal to your Select-String statement similiar to #1.
    ## For your -Path paramter use $dir, and -Pattern use $text variable
    ## YOUR CODE BELOW HERE



    ## A ShowLogs parameter is used in this function. 
    ## This parameter is a boolean value ($true or $false) 
    ## When this parameter is $true, the output will show the results. 
    ## If $false or blank no findings are displayed in the console.
    ## Write a simple if branch to check if $showLogs is equal to $True, 
    ## then the statement code to print the $results variable
    ## YOUR CODE BELOW HERE



    ## Lastly, return the number of hits by using the helper function howMany to output the count of results.
    ## Remember "return" will pass the object outside of the function when it completes.
    ## YOUR CODE BELOW HERE
  

}

## 4. Since we know the attacker's IP has hit some of our servers, let's test our new function out.
## A suspicious login from the attacker's IP is showing attempts from username "tonystark"
## - Create a variable $results1 and assign it the value of our logSearcher function with the arguments below.
## - Explore all files .\Logs folder by setting this as your first argument.
##     - Remember your use of the wildcard character seen in #1. 
## - Search for the string "tonystark" in your second argument
## - Display the results with showLogs set as $True in the third argument
## You can change showLogs to $false after you confirm your findings if you like
## HINT: Number of findings should show 254
## YOUR CODE BELOW HERE




## 5. Notice any suspicious activity from the logs? Any files opened by the hacker?
## - Create a variable $results2 and assign it the value of our logSearcher function with the arguments below.
## - Explore all files .\Logs folder by setting this as your first argument.
## - Just like #4, Search for the string "csv" in your second argument.
## Number of findings should show 5
## YOUR CODE BELOW HERE



## 6. Yikes, let's find out if those files have any sensitive data. Instead of scanning the Logs folder
## Use logSearcher to search all files in the directory .\Data for Social Security Numbers.
## - Create a variable $ssnResults and assign it the value of our logSearcher function with the arguments below.
## - Just like #5, execute logSearcher function again this time to see how many "SSN patterns" were found.
## - SSN pattern in 123-12-1234 format
## - HINT: Look at lecture slides or class lecture demos for examples on patterns.
## YOUR CODE BELOW HERE





## 7. Oh no, any Credit Card Numbers stolen? 
## Use logSearcher to search all files in the directory .\Data for Credit Card Numbers.
## - Create a variable $ccResults and assign it the value of our logSearcher function with the arguments below.
## - Just like #5, execute logSearcher function again this time to see how many Credit Card patterns were found.
## - Credit Cards pattern will be in 16 digit format with no dashes(-). Example 1234123412341234
## YOUR CODE BELOW HERE





## 8. With a major data breach on our hands, we must inform the CEO the expected financial loss to the business.
## A helper function has been provided called incidentCost
## Each type of sensitive data are found in the result variables from #6 and #7 above and 
## can be used as arguments for this problem.
## Look at the incidentCost function for example on how it can be used. No need to modify it.
## HINT: Estimated loss to the business is greater than $200K
## YOUR CODE BELOW HERE



#----------------------------------------------------------[Complete]-------------------------------------------------------------
 