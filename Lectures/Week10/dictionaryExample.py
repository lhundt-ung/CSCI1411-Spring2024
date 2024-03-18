#!/usr/bin/python3

# Dictionaries in action
D1 = {'Lance':'123-132-1234','Cody':'987-654-3210'}
print(D1)


# Add New Key/Value pair
D1['Michael']='456-789-0123'
print(D1)
print(len(D1))

# Modify existing Key
D1['Michael']='456-789-0126'
print(D1)

# Add existing items
D1["Lance"]="Infected"

# What is the length of the dictionary?
print(D1,"Length:",len(D1))

# Printing keys and values
print(D1.keys())
print(D1.values())

# Dictionary delete operation
#del D1['Michael']
D1.pop('Michael')
print(D1,"Length:",len(D1))

