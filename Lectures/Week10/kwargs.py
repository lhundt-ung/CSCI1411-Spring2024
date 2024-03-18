# kwargs Examples 
def print_kwargs(**kwargs):
    print(kwargs.items())
    sum = 0
    for key,value in kwargs.items():
        print(key, ":", value)
        sum = sum + value
  
    print("Total Sum: ",sum)

#Empty Dictionary
print_kwargs()
print_kwargs(a = 24,b = 34)
print_kwargs(a = 24,b = 34,c=17,d=56)


def print_values(**exampleDictionary):
    for key, value in exampleDictionary.items():
        #All 3 Print statements below print the same output in Python
        print("Student ID: {} Student Name: {} is in CS1411".format(key, value))
        #print("Student ID: " + key + " Student Name: " + value + " is in CS1411")
        #print("Student ID:",key,"Student Name:",value,"is in CS1411")


print_values(s90012345="Nigel")
print_values(s90000001="Lance",s90000002="Hope",s90000003="Journey")

