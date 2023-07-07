# 07-07-2023 3:24 pm
# Exercise 68: Compute a Grade Point Average
# Exercise 52 includes a table that shows the conversion from letter grades to grade points at a particular academic institution.
# In this exercise you will compute the grade point average of an arbitrary number of letter grades entered by the user.
# The user will enter a blank line to indicate that all of the grades have been provided.
# For example, if the user enters A, followed by C+, followed by B, followed by a blank line then your program should report a grade point average of 3.1.
# You may find your solution to Exercise 52 helpful when completing this exercise.
# Your program does not need to do any error checking. It can assume that each value entered by the user will always be a valid
# letter grade or a blank line.

count = 0
total = 0
grade = 0

# Read the grade
letter = input("Enter a grade (blank line to quit): ")
letter = letter.upper()

# Continue reading the grade until a blank line is entered
while letter != "":
    
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

    # Calculate the total grade
    total = grade + total
  
    # Read the next grade
    letter = input("Enter next grade (blank line to quit): ")
    letter = letter.upper()
    count += 1

# Calculate the grade point average
average = total / count

# Display the result
print("The grade point average is",average)
