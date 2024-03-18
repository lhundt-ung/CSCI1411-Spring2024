#Encryption Advanced
# from <something> import <this>
# something is called a package, this is a module
#Example: pip3 install alive_progress
from cryptography.fernet import Fernet 
from alive_progress import alive_bar
from time import sleep

secretMessage = input("What is your secret message? ")

def dramaticPause():   
    with alive_bar(100, bar = 'smooth') as bar:
        for i in range(100):
            sleep(0.05)
            bar()   

#Function to print obj and type
def printObject(obj1,message):
    print("-------------------------------------------")
    print("            ",message)
    dramaticPause()

    print("Object: ",obj1.decode('utf-8'))


# 1. Generate Random Key
key = Fernet.generate_key()
print(key)
print(type(key))
f = Fernet(key) 
printObject(key,"Generating Key")

# 2. Convert message to ciphertext
# Strings converted to a byte string before encrpyting
token = f.encrypt(bytes(secretMessage,'utf-8')) 
#token = f.encrypt(bytes(secretMessage,'ascii'))  
printObject(token,"Encrypting message") 
  
# 3. Decrypt encrypted message
decrypted = f.decrypt(token)  
printObject(decrypted,"Decrypting message") 