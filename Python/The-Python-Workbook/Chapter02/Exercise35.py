# 29-11-2022 11:57 am
# Exercise 35: Even or Odd?
# Write a program that reads an integer from the user. Then your program should display a message indicating whether the integer is even or odd.

# Prompt for input from user
num = int(input("Enter a number: "))

# Store the appropriate message in result
if num % 2 == 0:
    result = "That is an even number."
else:
    result = "That is an odd number."

# Display the result
print(result)
