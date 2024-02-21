#!/bin/bash

: '
# Assignment 5 - In this assignment, you will combining multiple tools to generate a
security html report of vulnerabilities on a target system.

You will need to follow the supplement guide to configure your environment in order to
complete the assignment. Remember to read all comments, they should be very helpful!

Good Luck!

EXAMPLE: .\assignment5.sh 10.0.2.4
'
echo "#1 Setting Constants"

##### Constants #####
# 1. Create a variable called STUDENT_NAME and assign the value of your name for the report 
# also and set the TARGET_IP to the *first* argument passed when the script is executed.
# Create Varaiable HERE


TITLE="Security Report prepared for CSCI 1411 - Spring 2024"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $STUDENT_NAME"
# Assign a value to TARGET_IP
# (HINT: USE the arguement passed when the script is ran. 
# Do not hard code an IP Address here)
TARGET_IP=

echo "------------------------------" >&2

##### Functions #####

# 2. Function: target_info
# Purpose: To write out the target's IP Address in HTML
# Add the variable defined for the target IP in the constants section
function target_info()
{
    echo "<h2>Target IP Address</h2>"
    echo "<pre>"
    echo "IP Address: " #YOUR CODE HERE
    echo "</pre>"
}   # end of target_info

# 3a. Function: target_machine
# Purpose: Scan target_machine with name to collect as much data as you can.
# 
# Use nmap to with an option that scans all ports and returns a lot of information about the target system
# then redirect the output to a file nmap.txt. This will be used later on in the script.

# EXAMPLE: nmap <parameters>
#YOUR CODE HERE


# 3b. Now that the results are stored in a text file nmap.txt, this can be read to extract 
# key pieces of information. Below in target_machine function, write a command that reads nmap.txt
# and returns on the name of the computer. A pipeline and grep may be helpful here.

function target_machine()
{
    echo "<h2>System Machine Name</h2>"
    echo "<pre>"
    #YOUR CODE HERE

    echo "</pre>"

}   # end of target_machine

# 4. Function: target_ping
# Purpose: To write out the target's ping response in HTML

# Use the ping command to test the target systems network response. You will need 
# to specify an option that counts and stops pinging after 4 attempts.
# HINT: You should ping the same machine specified in Question 2 using a variable name.
function target_ping()
{
    echo "<h2>Target Ping Response</h2>"
    echo "<pre>"
    #YOUR CODE HERE

    echo "</pre>"
}   # end of target_ping


# 5. Function: target_ports_open
# Purpose: To write out the target's open ports in HTML
# Use your previous nmap.txt file to find all open ports. Similiar to Question 3b.
# You may consider using the pipe operator to grep the nmap results 
# for the lines that contain open ports only.
# https://nmap.org/book/man-version-detection.html
function target_ports_open()
{
    # Runs only if host is up
    up="$(target_ping | grep '4 received')"
    if [ "$up'=='" ]; then
        echo "<h2>Ports open</h2>"
        echo "<pre>"
        # YOUR CODE HERE

        echo "</pre>"
    fi

}   # end of target_ports_open



# 6. Function: target_attack
# Purpose: Check if remote system has the vsftpd 2.3.4 vulnerability
# Search if the vsfpd vulnerability by completing the grep command below
function target_attack_vsftpd()
{  
    echo "<h2>Exploits</h2>"
        if target_ports_open | grep "YOUR CODE HERE"; then
            exploit_vsftpd
        else
            echo "Remote Host does not contain vsftpd vulnerability"
        fi
}   # end of target_attack_vsftpd

# 7. Function: exploit_vsftpd
# Purpose: This function below will use Metasploit to execute an exploit on our target system
# The Metasploit framework allows for scripted attacks via Resource Script.
# The HINT URL should provide how the Resource script works and how to create one.
# HINT: https://www.offensive-security.com/metasploit-unleashed/writing-meterpreter-scripts/
: ' Example Resource Script (Your exploit will be different)
use exploit/unix/irc/unreal_ircd_3281_backdoor
set RHOST 10.0.2.4
exploit -z
exit -y
'
function exploit_vsftpd()
{
    $(echo "#7 Launch Exploit!" >&2)
    # Build our metasploit attack Resrouce Script
    # Find a vsftpd exploit in the Metasploit library
    # Specify the expoit you want to use on the target system
    # Output the command to create a new resource script file 
    # called vsftpd.rc using either > or >>
    # YOUR CODE HERE


    # Next, append to the resource file vsftpd.rc setting the RHOST
    # to your target IP variable
    # YOUR CODE HERE


    # One of the last calls in the Resource script is to execute the exploit.
    # Append "exploit -z" the -z parameter will execute the exploit in the background
    # YOUR CODE HERE


    # DO NOT MODIFY
    echo "exit -y" >> vsftpd.rc

    # Finally you are ready to execute the exploit!
    # The resource script (vsftpd.rc) you created above will be used as an argument
    # with the Metasploit console (msfconsole). 
    # Look up which option you should use with resource scripts ;)
    # After this is completed you have finished the assignment.
    # Feel free to read the rest of the assignment file to see what's happening...
    echo "<h3>Results of Vsftpd exploit attempt on target</h3>"
    echo "<pre>"
    # YOUR CODE HERE


    echo "</pre>"

}   # end of exploit_vsftpd

# Function: write_html
# Purpose: To write out to generate the full report in HTML
function write_html()
{
echo "<html>
    <head>
        <title>$TITLE</title>
    </head>
    <body>
        <h1>$TITLE</h1>
        <p>$TIME_STAMP</p>
        $(echo "#2 Gathering Target Information" >&2)
        $(target_info)
        $(echo "------------------------------" >&2)
        $(echo "#3 Discovering Target System Name" >&2)
        $(target_machine)
        $(echo "------------------------------" >&2)
        $(echo "#4 Initiating Target Connectivity Test" >&2)
        $(target_ping)
        $(echo "------------------------------" >&2)
        $(echo "#5 Checking for Ports Open" >&2)
        $(target_ports_open)
        $(echo "------------------------------" >&2)
        $(echo "#6 Checking for vulnerability" >&2)
        $(target_attack_vsftpd)
        <h1>END OF REPORT</h1>
"
}

##### Main #####
## DO NOT MODIFY ##

if [ $# -eq 0 ]; then
    echo "Please supply target IP address (Your target IP may be different): ./assignment5 10.0.2.4"
    echo "Example: ./assignment5 10.0.2.4"
else
    write_html > SecurityReport-$TARGET_IP.html
    firefox SecurityReport-$TARGET_IP.html &
    exit
fi