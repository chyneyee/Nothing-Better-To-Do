# 25-11-2022 12:39 pm
# Exercise 33: Sort 3 Integers
# Create a program that reads three integers from the user and displays them in sorted order (from smallest to largest).
# Use the min and max functions to find the smallest and largest values. The middle value can be found by computing the sum of
# all three values, and then subtracting the minimum value and the maximum value.

# Read the input from user
first_num = int(input("Enter the first number: "))
second_num = int(input("Enter the second number: "))
third_num = int(input("Enter the third number: "))

# Calculate the result
smallest = min(first_num, second_num, third_num)
largest = max(first_num, second_num, third_num)
total = first_num + second_num + third_num
middle = (total - smallest) - largest

# Display the sorted order
print("The numbers in sorted order is {}, {}, {}." .format(smallest,middle,largest))
