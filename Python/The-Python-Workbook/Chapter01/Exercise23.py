# 24-11-2022 4:09 pm
# Exercise 23: Area of a Regular Polygon
# A polygon is regular if its sides are all the same length and the angles between all of the adjacent sides are equal. 
# The area of a regular polygon can be computed using the following formula, where s is the length of a side and n is the number of sides:
# area = n x s2 / 4 x tan(pi /n)
# Write a program that reads s and n from the user and then displays the area of a regular polygon constructed from these values.

import math

# Read the input from user
s = float(input("Enter the length of a side for a polygon: "))
n = int(input("Enter the number of sides: "))

# Calculate the area for the polygon
area = (n * (math.pow(s,2))) / (4 * math.tan(math.pi / n))

# Display the result
print("The area of the polygon is %.2f" % area)
