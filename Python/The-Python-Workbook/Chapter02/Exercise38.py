# 30-11-2022 9:08 am
# Exercise 38: Name That Shape
# Write a program that determines the name of a shape from its number of sides. 
# Read the number of sides from the user and then report the appropriate name as part of a meaningful message. 
# Your program should support shapes with anywhere from 3 up to (and including) 10 sides. If a number of sides outside of this range is entered then your program should display an appropriate error message.

# Prompts input from user
sides = int(input("Enter number of sides (3 - 10): "))

# Determine the shapes based from the input
if sides == 3:
    result = "triangle"
elif sides == 4:
    result = "square"
elif sides == 5:
    result = "pentagon"
elif sides == 6:
    result = "hexagon"
elif sides == 7:
    result = "heptagon"
elif sides == 8:
    result = "octagon"
elif sides == 9:
    result = "nonagon"
elif sides == 10:
    result = "decagon"

# Display an error message or the name of the shape
if sides < 3 or sides > 10:
    print("The number of sides is out of the range.")
else:
    print("The shape is", result)