# 23-11-2022 12:56 pm
# Exercise 3: Area of a Room
# Write a program that asks the user to enter the width and length of a room. Once these values have been read, your program should compute and display the area of the room.
# The length and the width will be entered as floating-point numbers.
# Include units in your prompt and output message; either feet or meters, depending on which unit you are more comfortable working with.

# Prompt the user for input
width = float(input("Enter the width in metres: "))
length = float(input("Enter the length in metres: "))

# Calculate the result
area = width * length

# Display the result
print("The area of the room is: %.2f square metres" % area)