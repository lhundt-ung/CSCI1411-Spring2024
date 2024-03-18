#!/usr/bin/python3
# Write a function that prints a list and length
def printItemList(listInput):
    print(listInput)
    print("List Length:",len(listInput))


# Lists
listexample = []
listexample.append('apple')
listexample.append('a')
listexample.append(2)
listexample.append("metasploit")
#use new print function here 
printItemList(listexample)

# What would this statment do?
listexample[2] = listexample[2]+10
printItemList(listexample)


listexample.append(12)
listexample.append(12)
printItemList(listexample)
listexample.remove('metasploit')
#listexample.remove(3)
printItemList(listexample)
listexample.remove(12)
printItemList(listexample)




