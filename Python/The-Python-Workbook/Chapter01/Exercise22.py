# 24-11-2022 3:42 pm
# Exercise 22: Area of a Triangle (Again)
# In the previous exercise you created a program that computed the area of a triangle when the length of its base and its height were known. 
# It is also possible to compute the area of a triangle when the lengths of all three sides are known. 
# Let s1, s2 and s3 be the lengths of the sides. Let s = (s1 + s2 + s3)/2. 
# Then the area of the triangle can be calculated using the following formula:
# area = sqrt(s × (s − s1) × (s − s2) × (s − s3))
# Develop a program that reads the lengths of the sides of a triangle from the user and displays its area.

import math

# Prompt the user for input
s1 = float(input("Enter first length of the triangle: "))
s2 = float(input("Enter the second length of the triangle: "))
s3 = float(input("Enter the third length of the triangle: "))

# Calculate the result
s = (s1 + s2 + s3) / 2
area = math.sqrt(s * (s - s1) * (s - s2) * (s - s3))

# Display the area
print("The area of the triangle is %.2f" % area)
