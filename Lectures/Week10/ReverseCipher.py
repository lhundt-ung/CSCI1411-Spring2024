#Reverse Cipher Example
import string
import time

#Prompt user for a message to encrypt
message = input("What is the secret message? ")

#Function to encrypt message by reversing message, decrpyt is a boolean value
def encrypt(message,decrypt):
    #User info in console for dramatic effect
    if(decrypt):
        print("******Decrypting******")
    else:
        print("******Encrypting******")
    
    #Pause for 5 seconds
    time.sleep(5)

    #Empty string object
    newMessage = ""

    #Recreate the message in reverse
    for letter in message:
       newMessage = letter + newMessage

    if(decrypt):
        print("Decrypted: ",newMessage)
    else:
        print("Encrypted: ",newMessage)

    return newMessage

#Encrypt Message
encryptedMessage = encrypt(message,False)

#Decrypt Message
encrypt(encryptedMessage,True)