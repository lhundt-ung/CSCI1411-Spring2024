#First Function in Python

def hello():
    print("hello")

x = hello()
print(x)

def hello2(name):
    print("Hello", name)
    return name

hello2("Class")
y = hello2("Class")
print(y)