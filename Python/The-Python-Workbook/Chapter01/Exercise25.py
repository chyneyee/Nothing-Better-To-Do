# 24-11-2022 4:53 pm
# Exercise 25: Units of Time (Again)
# In this exercise you will reverse the process described in the previous exercise.
# Develop a program that begins by reading a number of seconds from the user. 
# Then your program should display the equivalent amount of time in the form D:HH:MM:SS, where D, HH, MM, and SS represent days, hours, minutes 
# and seconds respectively. 
# The hours, minutes and seconds should all be formatted so that they occupy exactly two digits, with a leading 0 displayed if necessary.
# Use your research skills determine what additonal character needs to be included in the format specifier so that leading zeros are used instead of leading spaces when a number is formatted to particular width.

#Define constants
SECONDS_PER_DAY = 86400
SECONDS_PER_HOUR = 3600
SECONDS_PER_MINUTE = 60

# Read the input from user
seconds = float(input("Enter the number of seconds: "))

# Calculate the total seconds
days = seconds / SECONDS_PER_DAY
seconds = seconds % SECONDS_PER_DAY
hours = seconds / SECONDS_PER_HOUR
seconds = seconds % SECONDS_PER_HOUR
minutes = seconds / SECONDS_PER_MINUTE
seconds = seconds % SECONDS_PER_MINUTE

# Display the result
print("The duration is %d:%02d:%02d:%02d." % (days, hours, minutes, seconds))
