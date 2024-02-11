#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Your command line contains $# arguments"
else 
    function printMessage
    {
        echo $1
        echo "You have passed $# arguments to the function"
    }
    
    printMessage $1
    printMessage "Hacking"
    printMessage $2
    echo "You have passed $# arguments"
fi