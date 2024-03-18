import os 

#Find current path script is in to find the files in this example
filePath = os.path.dirname(__file__)
print(filePath)

#initialize file object to read
file = open(filePath + "/logo.png","r")
print(type(file))


#Print file Properties (Metadata)
st = os.stat(filePath + "/logo.png")
print(st)
