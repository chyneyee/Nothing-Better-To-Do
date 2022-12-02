# 02-12-2022 12:31 pm
# Exercise 53: Grade Points to Letter Grade
# In the previous exercise you created a program that converts a letter grade into the equivalent number of grade points. 
# In this exercise you will create a program that reverses the process and converts from a grade point value entered by the user 
# to a letter grade. Ensure that your program handles grade point values that fall between letter grades. 
# These should be rounded to the closest letter grade. Your program should report A+ for a 4.0 (or greater) grade point average.

# Prompts for input from user
gp = float(input("Enter a grade point: "))

# Determines the entered grade point with letter grade
if gp >= 4:
    letter = "A+"
elif gp >= 3.85 and gp < 4:
    lettter = "A"
elif gp >= 3.5 and gp < 3.85:
    letter = "A-"
elif gp >= 3.15 and gp < 3.5:
    letter = "B+"
elif gp >= 2.85 and gp < 3.15:
    letter = "B"
elif gp >= 2.5 and gp < 2.85:
    letter = "B-"
elif gp >= 2.15 and gp < 2.5:
    letter = "C+"
elif gp >= 1.85 and gp < 2.15:
    letter = "C"
elif gp >= 1.5 and gp < 1.85:
    letter = "C-"
elif gp >= 1.15 and gp < 1.5:
    letter = "D+"
elif gp >= 0.5 and gp < 1.15:
    letter = "D"
elif gp >= 0 and gp < 0.5:
    letter = "F"
else:
    letter = ""

# Display the result
if letter == "":
    print("Invalid grade points.")
else:
    print("Your grade letter is",letter)