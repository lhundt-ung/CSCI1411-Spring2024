L1 = [5,9,0]
L2 = [6,8,2]
L3 = L1 + L2
print(L3)

#Append method
L1.append(5)
L1.append([6,20,60])
print(L1)
print(L1[-1][1])

#What happens when you print L3 now?
#print(L3)


#Extend Method
L2.extend([6,20])
print(L2)