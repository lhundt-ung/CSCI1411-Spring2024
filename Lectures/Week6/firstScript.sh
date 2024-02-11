#!/bin/bash
# First Script
# Strings
var1="Luke"
var2="CSCI1411"

echo Hello $var1! Welcome to $var2!


#Math Operations
var3=1
var4=2

echo $var3+$var4
echo $(($var3+$var4))
echo $(($var3*$var4))


#Read Input from User
echo "Can Bash take user Input?"
read inputFromUser
echo "Input Received from User: $inputFromUser"

