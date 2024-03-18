#!/usr/bin/python3
#Without Error Handling
#file = open("testErrorHandling.txt","x")
#file.write("Hello")
#file.close()


#With Error Handling
try:
    file = open("test6.txt","x")
    file.write("Hello")
    file.close()
except:
    print("Caution, the file already exists, try a different filename. Thank you!")
else:
    print("File contents created successfully")




