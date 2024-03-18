#!/usr/bin/python3
import os


#Open the file for writing
file = open("test.txt","w")
file.write("Hello world!\n")
file.close()


#Open the file for appending
file = open("test.txt","a")
file.write("This is the end\n")
file.close() 



#Open the file for reading and modification
file = open("test.txt","r+")

#Print file contents
print("Current contents are:\n" + file.read())



file = open("test.txt","w")
file.write("Hello")
file.close() 



