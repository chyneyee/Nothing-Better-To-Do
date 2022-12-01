# 01-12-2022 2:48 pm
# Exercise 45: Date to Holiday Name
# Canada has three national holidays which fall on the same dates each year.
# Holiday             Date
# New year’s day      January 1
# Canada day          July 1
# Christmas day       December 25
# Write a program that reads a month and day from the user. If the month and day match one of the holidays listed previously 
# then your program should display the holiday’s name. 
# Otherwise your program should indicate that the entered month and day do not correspond to a fixed-date holiday.

# Prompts input from user
day = int(input("Enter a day: "))
month = input("Enter the month: ")

# Determines the holiday's name
if day == 1 and month == "january" or month == "January":
    holiday = "New Year's Day"
elif day == 1 and month == "july" or month == "July":
    holiday = "Canada Day"
elif day == 25 and month == "december" or month == "December":
    holiday = "Christmas Day"
else:
    holiday = "No holiday on this day."

# Display the result
print(holiday)
