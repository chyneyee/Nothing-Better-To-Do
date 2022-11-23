# 23-11-2022 2:13 pm
# Exercise 4: Area of a Field
# Create a program that reads the length and width of a farmer's field from the user in feet.
# Display the area of the field in acres.
# Hint: There are 43,560 square feet in an acre.

# Prompts the user for input
length = float(input("Enter the length of a farmer's field in feet: "))
width = float(input("Enter the width of a farmer's field in feet: "))

# Calculate the area
area = (length * width) / 43560

# Display the result
print("The area of a farmer's field is %.2f acres" % area)
