# 24-11-2022 1:32 pm
# Exercise 16: Area and Volume
# Write a program that begins by reading a radius r, from the user. 
# The program will continue by computing and displaying the area of a circle with radius r and the volume of a sphere with radius r.
# Use the pi constant in the math module in your calculations.
# Hint: The area of a circle is computed using the formula area = pi * r * r. The volume of a sphere is computed using the formula volume = 4 / 3 * pi * r * * r.

import math

# Prompt for user's input
r = float(input("Enter the radius of a circle: "))

# Calculate the area and volume
area = math.pi * math.pow(r,2)
volume = (4 / 3) * math.pi * math.pow(r,3)

# Display the results
print("The area of a circle is %.2f" % area)
print("The volume of a sphere is %.2f" % volume)
