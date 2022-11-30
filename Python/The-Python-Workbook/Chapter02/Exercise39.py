# 30-11-2022 3:07 pm
# Exercise 39: Month Name to Number of Days
# The length of a month varies from 28 to 31 days. 
# In this exercise you will create a program that reads the name of a month from the user as a string. 
# Then your program should display the number of days in that month. 
# Display “28 or 29 days” for February so that leap years are addressed.

# Prompts for input from user
month = input("Enter a month name: ")

# Determines the number of days in that month
if month == "April" or month == "June" or month == "September" or month == "November":
    days = 30
elif month == "February":
    days = "28 or 29"
else:
    days = 31

# Display the result
print("The month {} has {} days." . format(month,days))