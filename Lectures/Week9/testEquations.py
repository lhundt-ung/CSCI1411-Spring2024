# Find the speed of an object
# It takes 3 hours to travel a total distance
# of 150 miles,what is the avg. speed? 
# Speed = distance / time

distance = 200
time = 3

avgSpeed = distance/time
print(avgSpeed)

inputDistance = input("Distance: ")
inputTime = input("Time it took: ")

print("The average speed is ", round(float(inputDistance)/float(inputTime),2))