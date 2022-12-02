# 02-12-2022 1:15 pm
# Exercise 54: Assessing Employees
# At a particular company, employees are rated at the end of each year. The rating scale begins at 0.0, with higher values indicating better performance
# and resulting in larger raises. The value awarded to an employee is either 0.0, 0.4, or 0.6 or more.
# Values between 0.0 and 0.4, and between 0.4 and 0.6 are never used. The meaning associated with each rating is shown in the following table. 
# The amount of an employee’s raise is $2400.00 multiplied by their rating.
# Rating              Meaning
# 0.0                 Unacceptable performance
# 0.4                 Acceptable performance
# 0.6 or more         Meritorious performance
# Write a program that reads a rating from the user and indicates whether the performance was unacceptable, acceptable or meritorious. 
# The amount of the employee’s raise should also be reported. Your program should display an appropriate error message if an invalid rating is entered.

# Prompts user for input
rating = float(input("Enter the performance rating (e.g. 0.0, 0.6): "))

# Calculate the rating and performance
if rating == 0.0:
    grade = "Unacceptable Performance"
elif rating == 0.4:
    grade = "Acceptable Performance"
elif rating >= 0.6:
    grade = "Meritorious Performance"
else:
    grade = ""

# Display the performance result
if grade == "":
    print("Invalid rating is entered.")
else:
    increment = rating * 2400
    print("The employee has shown {}." . format(grade))
    print("The amount of your increment is ${0:.2f}." . format(increment))
