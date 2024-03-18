#Hack Ceasar Cipher the brute force way
import string

message = 'RjjyafyaRHHGafyatsjaUR' #encrypted message
#Obtain list of all letters (UPPERCASE + lowercase + space)
charList = list(string.ascii_lowercase + string.ascii_uppercase + " ")


keyPosition = 0

for key in charList: 
    translated = ''
    
    for letter in message:
        if letter in charList:
            num = charList.index(letter)
            num = num - keyPosition
            if num < 0:
                num = num + keyPosition-1
            translated = translated + charList[num]
        else:
            translated = translated + letter
    print('Number of clicks #%s: %s' % (keyPosition, translated))
    keyPosition+=1
