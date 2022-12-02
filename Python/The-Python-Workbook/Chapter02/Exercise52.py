# 02-12-2022 12:12 pm
# Exercise 52: Letter Grade to Grade Points
# At a particular university, letter grades are mapped to grade points in the following manner:
# Letter Grade points
# A+      4.0
# A       4.0
# A−      3.7
# B+      3.3
# B       3.0
# B−      2.7
# C+      2.3
# C       2.0
# C−      1.7
# D+      1.3
# D       1.0
# F       0
# Write a program that begins by reading a letter grade from the user. 
# Then your program should compute and display the equivalent number of grade points. 
# Ensure that your program generates an appropriate error message if the user enters an invalid letter grade.

# Prompts for input from user
letter = input("Enter a letter grade (e.g. A-, D+): ")
letter = letter.upper()

# Determines the grade points based from the entered letter
if letter == "A+" or letter == "A":
    grade = 4.0
elif letter == "A-":
    grade = 3.7
elif letter == "B+":
    grade = 3.3
elif letter == "B":
    grade = 3.0
elif letter == "B-":
    grade = 2.7
elif letter == "C+":
    grade = 2.3
elif letter == "C":
    grade = 2.0
elif letter == "C-":
    grade = 1.7
elif letter == "D+":
    grade = 1.3
elif letter == "D":
    grade = 1.0
elif letter == "F":
    grade = 0
else:
    grade = ""

# Display the grade points
if grade == "":
    print("Invalid grade letter.")
else:
    print("Your grade point is",grade)
