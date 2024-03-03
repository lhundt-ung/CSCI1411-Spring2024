#/usr/bin/python3
import hashlib

#import a single module out of a library of modules. Also, give it an alias
from hashlib import md5 as hashmd5 
import os 

"""
Demonstration use of modules
"""
'''

# Hashlib Example
pw = input("Enter your password: ")

# Use imported module one way
#password = hashlib.md5(pw.encode('utf-8'))
#print(password)

# Here is another way you would see if (does the same thing as previous statement)
password = hashmd5(pw.encode('utf-8'))

print(type(password))
print(password)
hashedPass = password.hexdigest() #Converts a hashed object to a string
print(type(hashedPass))

print("Password HASH: ",hashedPass)



pw2 = input("Enter your password2: ")
password2 = hashlib.md5(pw2.encode('utf-8'))
hashedPass2 = password2.hexdigest()
print("Password HASH: ",hashedPass2)

#Compare the password hashes, not the original password string
if(hashedPass == hashedPass2):
    print("Passwords are the same!")
else:
    print("Passwords do not match")
'''




# os library example
#print(dir(os))
print(os.listdir("/home/kali"))
#print(os.listdir("/"))

#whereami = os.listdir("/")
#print(whereami[0:5])
#print(type(whereami))

