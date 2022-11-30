# 30-11-2022 4:16 pm
# Exercise 41: Classifying Triangles
# A triangle can be classified based on the lengths of its sides as equilateral, isosceles or scalene. 
# All 3 sides of an equilateral triangle have the same length. 
# An isosceles triangle has two sides that are the same length, and a third side that is a different length. 
# If all of the sides have different lengths then the triangle is scalene.
# Write a program that reads the lengths of 3 sides of a triangle from the user.
# Display a message indicating the type of the triangle.

# Prompts for input from user
side1 = float(input("Enter the length for side 1: "))
side2 = float(input("Enter the length for side 2: "))
side3 = float(input("Enter the length for side 3: "))

# Determines the type of triangles
if side1 == side2 == side3:
    result = "equilateral"
elif side1 == side2 or side1 == side3 or side2 == side3:
    result = "isosceles"
else:
    result = "scalene"

# Display the result
print("The triangle is a",result)