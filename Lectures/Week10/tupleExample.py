#!/usr/bin/python3

# Tuples
months = ()
months = ('January','February','March','April','May','June', \
'July','August','September','October','November')


print(months)
print(months[3])
#months.append('December')

#for each item in Tuple
for month in months:
    print(month)




L1 = [1,"two",months]
#L1.append(10)
#print(L1)

D1 = {"Months":months}
#print(D1)
#print(D1['Months'][0:][3:7][2])


# Why use Tuples? Run example in console
# Answer. Speed!
#python3 -mtimeit "['January','February','March','April','May','June', \
#'July','August','September','October','November']"
#python3 -mtimeit "('January','February','March','April','May','June', \
#'July','August','September','October','November')"