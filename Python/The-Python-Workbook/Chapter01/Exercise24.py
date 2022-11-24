# 24-11-2022 4:32 pm
# Exercise 25: Units of Time
# Create a program that reads a duration from the user as a number of days, hours, minutes, and seconds.
# Compute and display the total number of seconds represented in this duration.


# Read the input from user
days = float(input("Enter the number of days: "))
hours = float(input("Enter the number of hours: "))
minutes = float(input("Enter the number of minutes: "))
seconds = float(input("Enter the number of seconds: "))

# Calculate the total seconds
totalDaysSeconds = days * 24 * 60 * 60
totalHoursSeconds = hours * 60 * 60
totalMinutesSeconds = minutes * 60
totalSeconds = totalDaysSeconds + totalHoursSeconds + totalMinutesSeconds + seconds

# Display the result
print("The total number of seconds with the given duration is",totalSeconds)