# 02-12-2022 4:36 pm
# Exercise 59: Next Day
# Write a program that reads a date from the user and computes its immediates successor.
# For example, if the user enters values that represent 2013-11-18 then your program should display a message indicating that 
# the day immediately after 2013-11-18 is 2013-11-19. 
# If the user enters values that represent 2013-11-30 then the program should indicate that the next day is 2013-12-01. 
# If the user enters values that represent 2013-12-31 then the program should indicate that the next day is 2014-01-01. 
# The date will be entered in numeric form with three separate input statements; one for the year, one for the month, and one for the day. Ensure that 
# your program works correctly for leap years.

# Prompts input from user
year = int(input("Enter the year: "))
month = int(input("Enter the month: "))
day = int(input("Enter the day: "))

nextDay = day
nextMonth = month
nextYear = year

# Calculate leap year
isLeapYear = ""

if year % 400 == 0 or year % 4 == 0:
        isLeapYear = True
elif year % 100 == 0:
        isLeapYear = False

if month == 2 and isLeapYear:
    if day == 28:
        nextDay = day + 1
    elif day == 29:
        nextMonth = month + 1
        nextDay = 1
elif not isLeapYear:
    if day == 28:
        nextMonth = month + 1
        nextDay = 1
if day >= 1 and day < 28:
    nextDay = day + 1

# 31st December to 1st of January
if month == 12:
    if day >= 1 and day < 31:
        nextDay = day + 1
    elif day == 31:
        nextDay = 1
        nextMonth = 1
        nextYear = year + 1

# Months with 30 days
if month == 4 or month == 6 or month == 9 or month == 11:
    if day >= 1 and day < 30:
        nextDay = day + 1
    elif day == 30:
        nextDay = 1
        nextMonth = month + 1

# Months with 31 days
if month == 1 or month == 3 or month == 5 or month == 7 or month == 10:
    if day == 31:
        nextDay = 1
        nextMonth = month + 1
    elif day >= 1 and day < 31:
        nextDay = day + 1

# Display the result
print("The next day is {}-{}-{}." . format(year,nextMonth,nextDay))
