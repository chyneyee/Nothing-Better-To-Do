# 25-11-2022 10:59 am
# Exercise 28: Body Mass Index
# Write a program that computes the body mass index (BMI) of an individual. Your program should begin by reading a height and
# weight from the user. Then it should use one of the following two formulas to compute the BMI before displaying it. If you
# read the height in inches and the weight in pounds then body mass index is computed using the following formula:
# BMI = (weight) / (height x height) x 703
# If you read the height in metres and the weight in kilograms then body mass index is computed using this slightly simpler
# formula:
# BMI = weight / (height x height)

# Prompt for input from user
height = float(input("Enter your height in metres: "))
weight = float(input("Enter your weight in kilograms: "))

# Calculate the BMI
bmi = weight / (height * height)

# Display the result
print("Your BMI is %.2f" % bmi)
