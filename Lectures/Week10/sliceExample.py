#!/usr/bin/python3

# Slice Example
ports = ["smtp","ftp","smb","rdp"]

# Print the last item
print(ports[-1])


# Three ways to print the entire list
print(ports)
print(ports[:])
print(ports[0:])

# Print all items after the first item
print(ports[1:])


# Print all items after the first item and before the last item
print(ports[1:-1])



# Print all items execpt the last one
print(ports[:-1])
