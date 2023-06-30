# 30-06-2023 10:14 am
# Exercise 63: Average
# In this exercise you will create a program that computes the average of a collection of values entered by the user.
# The user will enter 0 as a sentinel value to indicate that no further values will be provided.
# Your program should display an appropriate error message if the first value entered by the user is 0.
# Hint: Because the 0 marks the end of the input it should not be included in the average.

# Read the first value from the user
value = int(input("Enter a value: "))
sum = 0.00
count = 0

# Prints error message if first value is 0.
if value == 0:
    print("0 should not be included in the average.")
    exit()

# Keep looping while the user enters a non-zero number
while (value > 0):
    sum += value
    count += 1

    # Read the next value from the user
    value = int(input("Enter a value: "))

# Calculate the average and print the result
avg = sum / count
print("The average is: ",avg)
