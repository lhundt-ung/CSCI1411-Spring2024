import bitarray
from cryptography.fernet import Fernet 

key = Fernet.generate_key()
print(key)


print(key[:16])
print(key[16:])
