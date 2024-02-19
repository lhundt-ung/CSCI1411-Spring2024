#!/bin/bash

# Write a script that satisfies the following
# 1. Redirect todays date to results.txt
# 2. Variable to stores Target IP address passed as an argument when the script is executed.
# 3. Function that runs nmap against target IP address and returns Open Ports (include column headers)
# 4. Function that runs nmap against target IP address and responds back if system is running "VNC (protocol 3.3)"
# 5. Run functions and redirect to text file

date > results.txt

ip=$1
echo $ip >> results.txt

function openPorts() {
    results= nmap $ip | grep "open"
    echo $results
}

openPorts >> results.txt

function vulnerable {
    results=$(nmap -sV 10.0.2.4 | grep "VNC (protocol 3.3)")

    if [[ $results = *"VNC"* ]]; then
        echo "Server is running a vulnerable version of VNC"
    fi
}

vulnerable >> results.txt