#!/usr/bin/python3

# Create a "webster" dictionary, that would function like a real dictionary
# Create two entries, one for the word 'apple' and one for the word 'date'
# dictionaryExample = {'key':'value'}
webster = {}
#webster = {'apple':"Type of delicious fruit"}
webster['apple'] = "Type of delicious fruit"
print(webster)
print(webster['apple'])


webster['date'] = ["period of time","type of fruit"]
print(webster)
print(webster['date'])
print(webster['date'][0])