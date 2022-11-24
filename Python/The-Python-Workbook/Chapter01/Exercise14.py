# 24-11-2022 12:24 pm
# Exercise 14: Height Units
# Many people think about their height in feet and inches, even in some countries that primarily use the metric system. 
# Write a program that reads a number of feet from the user, followed by a number of inches.
# Once these values are read, your program should compute and display the equivalent number of centimetres.
# Hint: One foot is 12 inches. One inch is 2.54 centimetres.

# Define constants
FOOT = 12
INCH = 2.54

# Read the user's input
feetInput = int(input("Enter a number for feet: "))
inchesInput = int(input("Enter a number for inches: "))

# Convert feet and inches to centimetres
feetInput = feetInput * FOOT
cm = (feetInput + inchesInput) * INCH

# Display the result
print("Your height in centimetres is ",cm, "cm")