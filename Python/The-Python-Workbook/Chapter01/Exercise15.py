# 24-11-2022 1:19 pm
# Exercise 15: Distance Units
# In this exercise, you will create a program that begins by reading a measurement in feet from the user.
# Then your program should display the equivalent distance in inches, yards, and miles.
# Use the Internet to look up the necessary conversion factors if you don't have them memorised.

# Read user's input
feet = float(input("Please enter the feet: "))

# Calculate the conversion
inch = feet * 12
yard = feet / 3
mile = feet / 5280

# Display the results
print("Feet in inches: %.2f" % inch)
print("Feet in yards: %.2f" % yard)
print("Feet in miles: %.2f" % mile)