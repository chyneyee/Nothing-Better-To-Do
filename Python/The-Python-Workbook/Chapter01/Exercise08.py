# 23-11-2022 4:41 pm
# Exercise 8: Widgets and Gizmos
# An online retailer sells two products: widgets and gizmos. Each widget weighs 75 grams. Each gizmo weighs 112 grams.
# Write a program that reads the number of widgets and the number of gizmos from the user.
# Then your program should compute and display the total weight of the parts.

# Define constants
WIDGET = 75
GIZMO = 112

# Read the input from user
input1 = int(input("Enter the number of widgets: "))
input2 = int(input("Enter the number of gizmos: "))

# Calculate the total weight
total_widget = input1 * WIDGET
total_gizmo = input2 * GIZMO

# Display the total weight of the parts
print("The total weight for widgets is",total_widget, "grams and the total weight for gizmo is",total_gizmo, "grams")