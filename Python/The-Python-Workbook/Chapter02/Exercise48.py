# 01-12-2022 4:18 pm
# Exercise 48: Birth Date to Astrological Sign
# The horoscopes commonly reported in newspapers use the position of the sun at the time of one’s birth to try and 
# predict the future. This system of astrology divides the year into twelve zodiac signs, as outline in the table below:
# Zodiac sign                 Date range
# Capricorn                   December 22 to January 19
# Aquarius                    January 20 to February 18
# Pisces                      February 19 to March 20
# Aries                       March 21 to April 19
# Taurus                      April 20 to May 20
# Gemini                      May 21 to June 20
# Cancer                      June 21 to July 22
# Leo                         July 23 to August 22
# Virgo                       August 23 to September 22
# Libra                       September 23 to October 22
# Scorpio                     October 23 to November 21
# Sagittarius                 November 22 to December 21
# Write a program that asks the user to enter his or her month and day of birth. 
# Then your program should report the user’s zodiac sign as part of an appropriate output message.

# Prompts user for input
month = input("Enter your birth month: ")
day = int(input("Enter your day of birth: "))

# Determines the user's horoscope
if month == "December" and 22 <= day <= 31 or month == "January" and 1 <= day <= 19:
    horoscope = "Capricorn"
elif month == "January" and 20 <= day <= 31 or month == "February" and 1 <= day <= 18:
    horoscope = "Aquarius"
elif month == "February" and 19 <= day <= 29 or month == "March" and 1 <= day <= 20:
    horoscope = "Pisces"
elif month == "March" and 21 <= day <= 31 or month == "April" and 1 <= day <= 19:
    horoscope = "Aries"
elif month == "April" and 20 <= day <= 30 or month == "May" and 1 <= day <= 20:
    horoscope = "Taurus"
elif month == "May" and 21 <= day <= 31 or month == "June" and 1 <= day <= 20:
    horoscope = "Gemini"
elif month == "June" and 21 <= day <= 30 or month == "July" and 1 <= day <= 22:
    horoscope = "Cancer"
elif month == "July" and 23 <= day <= 31 or month == "August" and 1 <= day <= 22:
    horoscope = "Leo"
elif month == "August" and 23 <= day <= 31 or month == "September" and 1 <= day <= 22:
    horoscope = "Virgo"
elif month == "September" and 23 <= day <= 30 or month == "October" and 1 <= day <= 22:
    horoscope = "Libra"
elif month == "October" and 23 <= day <= 31 or month == "November" and 1 <= day <= 21:
    horoscope = "Scorpio"
elif month == "November" and 22 <= day <= 30 or month == "December" and 1 <= day <= 21:
    horoscope = "Sagittarius"

# Display the horoscope
print("Your horoscope is",horoscope)
