# 23-11-2022 4:28 pm
# Exercise 7: Sum of the First n Positive Integers
# Write a program that reads a positive integer, n, from the user and then displays the sum of all of the integers from 1 to n.
# The sum of the first n positive integers can be computed using the formula:
# sum = (n)(n+1) / 2

# Reads the user input
n = (int(input("Enter a positive number: ")))

# Calculate the sum
total = n * (n +1) / 2

# Display the result
print("The sum of the first" ,n, " positive integer is", total)
