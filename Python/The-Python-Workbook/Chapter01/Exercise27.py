# 25-11-2022 10:28 am
# Exercise 27: When is Easter?
# Write a program that implements the Anonymous Gregorian Computus algorithm to compute the date of Easter. 
# Your program should read the year from the user and then display an appropriate message that includes the date of Easter in that year.

import math

# Read the input from user
year = int(input("Enter the year: "))

# Calculate the date of Easter in that year
a = year % 19
b = math.floor(year / 100)
c = year % 100
d = math.floor(b / 4)
e = b % 4
f = math.floor((b+8) / 25)
g = math.floor((b-f+1) / 3)
h = (19 * a + b - d - g + 15) % 30
i = math.floor(c / 4)
k = c % 4
l = (32 + (2 * e) + (2 * i) - h - k) % 7
m = math.floor((a + (11 * h) + (22 * l)) / 451)
month = math.floor((h + l - (7 * m) + 114) / 31)
day = 1 + ((h + l - (7 * m) + 114) % 31)

# Display the result
print("The date for Easter in {} is {}/{}". format(year,day,month))
