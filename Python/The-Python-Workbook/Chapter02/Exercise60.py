# 05-12-2022 8:03 am
# Exercise 60: What Day of the Week is January 1?
# The following formula can be used to determine the day of the week for January 1 in a given year:
# day_of_the_week = (year + floor((year - 1) / 4) - floor((year - 1) / 100) + floor ((year - 1) / 400)) % 7
# The result calculated by this formula is an integer that represents the day of the week. Sunday is represented by 0.
# The remaining days of the week following in sequence through to Saturday, which is represented by 6.
# Use the formula above to write a program that reads a year from the user and reports the day of the week for January 1 of that year. 
# The output from your program should include the full name of the day of the week, not just the integer returned by the formula.

import math 

# Prompts input from user
year = int(input("Please enter a year: "))

# Determines the day of the week for January 1
day_of_the_week = (year + math.floor((year - 1) / 4) - math.floor((year - 1) / 100) + math.floor ((year - 1) / 400)) % 7
if day_of_the_week == 0:
    day = "Sunday"
elif day_of_the_week == 1:
    day = "Monday"
elif day_of_the_week == 2:
    day = "Tuesday"
elif day_of_the_week == 3:
    day = "Wednesday"
elif day_of_the_week == 4:
    day = "Thursday"
elif day_of_the_week == 5:
    day = "Friday"
elif day_of_the_week == 6:
    day = "Saturday"

# Display the result
print("The day of the week for January 1, {} is on {} - {}." . format(year,day_of_the_week,day))