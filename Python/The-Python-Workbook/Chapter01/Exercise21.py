# 24-11-2022 3:28 pm
# Exercise 21: Area of a Triangle
# The area of a triangle can be computing using the following formula, where b is the length of the base of the triangle, 
# and h is its height:
# area = b x h / 2
# Write a program that allowd the user to enter values for b and h. The program should then compute and display the area of a triangle with base length b and height h.

# Prompt for user's input
b = float(input("Enter the base of the triangle: "))
h = float(input("Enter the height of the triangle: "))

# Calculate the area of the triangle
area = b * h / 2

# Display the result
print("The area of the triangle with base length {} and height {} is {:.2f}.". format(b,h,area))