# 25-11-2022 12:11 pm
# Exercise 32: Sum of the Digits in an Integer
# Develop a program that reads a four-digit integer from the user and displays the sum of its digits.
# For example, if the user enters 3141 then your program should display 3 + 1 + 4 + 1 = 9.

# Read input from user
digits = int(input("Enter a four-digit integer: "))

# Calculate the sum
first_digit = digits // 1000
digits %= 1000
second_digit = digits // 100
digits %= 100
third_digit = digits // 10
digits %= 10
fourth_digit = digits
total = first_digit + second_digit + third_digit + fourth_digit

# Display the result
print("The sum for {} + {} + {} + {} is {}". format(first_digit,second_digit,third_digit,fourth_digit,sum))
