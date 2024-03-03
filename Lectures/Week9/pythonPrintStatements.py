num1 = 1.5
num2 = 6.3
sum=num1+num2

# Different ways to display variables in print statement
print('The sum of',num1,'and',num2,'is',sum)
print('The sum of {0} and {1} is {2}'.format(num1, num2, sum))
print('The sum of ' + str(num1) + ' and ' + str(num2) + ' is ' + str(sum))
print('The sum of %s and %s is %s'%(num1,num2,sum))
print(f'The sum of {num1} and {num2} is {sum}')
print('The sum of num1 and num2 is sum')


#Print the following string as uppercase
text1 = "how can we uppercase this string in python?"
print(text1.upper())
print(text1)
