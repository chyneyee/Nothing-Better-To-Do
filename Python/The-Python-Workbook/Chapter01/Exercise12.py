# 24-11-2022 10:57 am
# Exercise 12: Distance Between Two Points on Earth
# The surface of the Earth is curved, and the distance between degrees of longitude varies with latitude. As a result, finding the distance between two points on the surface of the Earth is more complicated than simply using the Pythagorean theorem.
# Let (t1, g1) and (t2, g2) be the latitude and longitude of two points on the Earth’s surface. The distance between these points, following the surface of the Earth, in kilometers is: 
# distance = 6371.01 × arccos(sin(t1) × sin(t2) + cos(t1) × cos(t2) × cos(g1 − g2)).
# The value 6371.01 in the previous equation wasn't selected at random. It is the average radius of the Earth in kilometres.
# Create a program that allows the user to enter the latitude and longitude of two points on the Earth in degrees. Your program should display the distance between the points, following the surface of the earth, in kilometers.
# Hint: Python's trigonometric functions operate in radians. As a result, you will need to convert the user's input from degrees to radians before computing the distance with the formula discussed previously. The math module contains a function named radians which converts from degrees to radians.

import math

# Read user's input
t1 = float(input("Please enter the longitude degrees of Point A: "))
g1 = float(input("Please enter the latitude degrees of Point A: "))
t2 = float(input("Please enter the longitude degrees of Point B: "))
g2 = float(input("Please enter the latitude degrees of Point B: "))

# Convert degrees to radians
rt1 = math.radians(t1)
rg1 = math.radians(g1)
rt2 = math.radians(t2)
rg2 = math.radians(g2)

# Calculate the distance
distance = 6371.01 * math.acos(math.sin(rt1) * math.sin(rt2) + math.cos(rt1) * math.cos(rt2) * math.cos(rg1 - rg2))

# Display the distance in kilometres
print("The distance between points {},{} and {},{} following the surface of the earth in kilometres is {:.3f}". format(t1,g1,t2,g2,distance))