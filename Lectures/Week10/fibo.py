
# Fibonacci numbers module
# Write a python function that generates fibonacci numbers up 
# to the specified value
# Example fibonacci numbers:fibo(6) Output 0 1 1 2 3 5 

def fibo(input):
    fNumbers = [0,1]
    for x in range(2,input):
        firstNumber = fNumbers[x-1]
        secondNumber = fNumbers[x-2]
        nextNumber = firstNumber + secondNumber
        fNumbers.append(nextNumber)

    print(fNumbers)

fibo(6)
fibo(100)
fibo(100000)