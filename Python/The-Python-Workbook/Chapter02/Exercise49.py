# 01-12-2022 4:43 pm
# Exercise 49: Chinese Zodiac
# The Chinese zodiac assigns animals to years in a 12 year cycle. One 12 year cycle is shown in the table below. 
# The pattern repeats from there, with 2012 being another year of the dragon, and 1999 being another year of the hare.
# Year Animal
# 2000 Dragon
# 2001 Snake
# 2002 Horse
# 2003 Sheep
# 2004 Monkey
# 2005 Rooster
# 2006 Dog
# 2007 Pig
# 2008 Rat
# 2009 Ox
# 2010 Tiger
# 2011 Hare
# Write a program that reads a year from the user and displays the animal associated with that year. 
# Your program should work correctly for any year greater than or equal to zero, not just the ones listed in the table.

# Prompts input from user
year = int(input("Enter the year of birth: "))
n = 12

if year >= 0:
    if year % n == 8:
        zodiac = "Dragon"
    elif year % n == 9:
        zodiac = "Snake"
    elif year % n == 10:
        zodiac = "Horse"
    elif year % n == 11:
        zodiac = "Sheep"
    elif year % n == 0:
        zodiac = "Monkey"
    elif year % n == 1:
        zodiac = "Rooster"
    elif year % n == 2:
        zodiac = "Dog"
    elif year % n == 3:
        zodiac = "Pig"
    elif year % n == 4:
        zodiac = "Rat"
    elif year % n == 5:
        zodiac = "Ox"
    elif year % n == 6:
        zodiac = "Tiger"
    elif year % n == 7:
        zodiac = "Hare"

# Display the result
print("Your Chinese zodiac is",zodiac)

