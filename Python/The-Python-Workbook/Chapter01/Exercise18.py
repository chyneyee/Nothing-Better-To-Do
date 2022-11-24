# 24-11-2022 2:13 pm
# Exercise 18: Volume of a Cylinder
# The volume of a cylinder can be computed by multiplying the area of its circular base by its height.
# Write a program that reads the radius of the cylinder, along with its height, from the user and computes its volume.
# Display the result rounded to one decimal place.

import math

# Read the user's input
radius = float(input("Enter the radius of a cylinder: "))
height = float(input("Enter the height of the cylinder: "))

# Calculate the volume
area = math.pi * math.pow(radius, 2)
volume = area * height

# Display the volume
print("The volume of the cylinder is %.2f" % volume)