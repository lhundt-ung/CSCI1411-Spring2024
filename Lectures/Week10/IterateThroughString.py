# String - Looping Example
# Write a loop that reverses the order of the secret message

message = input("What is the secret message? ")
newMessage = ""

for letter in message:
    #print(letter)
    newMessage = letter + newMessage
    print(newMessage)


