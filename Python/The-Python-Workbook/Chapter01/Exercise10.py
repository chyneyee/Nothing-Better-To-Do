# 23-11-2022 5:17 pm
# Exercise 10: Arithmetic
# Create a program that reads two integers, a and b, from the user. Your program should compute and display:
# The sum of a and b
# The difference when b is subtracted from a
# The product of a and b
# The quotient when a is divided by b
# The remainder when a is divided by b
# The result of log(10)a
# The result of a^b
# Hint: You will probably find the log(10) function in the math module helpful for computing the second last item in the list.

import math

# Reads the input from user
a = int(input("Enter the first integer: "))
b = int(input("Enter the second integer: "))

# Calculate and display the results
total = a + b 
print("The sum of",a, "and",b, "is %d" % total)

difference = b - a
print("The difference between",b, "and",a, "is %d" % difference)

product = a * b
print("The product of",a, "and",b, "is %d" % product)

quotient = a / b
print("The quotient when",a, "is divided by",b, "is %d" % quotient)

remainder = a % b
print("The remainder when",a, "is divided by",b, "is %d" % remainder)

log10 = math.log10(a)
print("The base 10 algorithm of",a, "is %.2f" % log10)

exponent = a ** b
print("The result of",a,"^",b, "is %d" % exponent)