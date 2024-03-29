# 01-12-2022 5:04 pm
# Exercise 50: Richter Scale
# The following table contains earthquake magnitude ranges on the Richter scale and their descriptors:
# Magnitude                   Descriptor
# Less than 2.0               Micro
# 2.0 to less than 3.0        Very minor
# 3.0 to less than 4.0        Minor
# 4.0 to less than 5.0        Light
# 5.0 to less than 6.0        Moderate
# 6.0 to less than 7.0        Strong
# 7.0 to less than 8.0        Major
# 8.0 to less than 10.0       Great
# 10.0 or more                Meteoric
# Write a program that reads a magnitude from the user and displays the appropriate descriptor as part of a meaningful message. 
# For example, if the user enters 5.5 then your program should indicate that a magnitude 5.5 earthquake is considered to be a
# moderate earthquake.

# Prompts input from user
magnitude = float(input("Enter the magnitude: "))

if magnitude < 2:
    descriptor = "micro"
elif magnitude >= 2 and magnitude < 3:
    descriptor = "very minor"
elif magnitude >= 3 and magnitude < 4:
    descriptor = "minor"
elif magnitude >= 4 and magnitude < 5:
    descriptor = "light"
elif magnitude >= 5 and magnitude < 6:
    descriptor = "moderate"
elif magnitude >= 6 and magnitude < 7:
    descriptor = "strong"
elif magnitude >= 7 and magnitude < 8:
    descriptor = "major"
elif magnitude >= 8 and magnitude < 10:
    descriptor = "great"
elif magnitude >= 10:
    descriptor = "meteoric"

# Display the result
print("A magnitude {} earthquake is considered to be a {} earthquake." . format(magnitude,descriptor))