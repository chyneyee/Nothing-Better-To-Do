# 23-11-2022 4:52 pm
# Exercise 9: Compound Interest
# Pretend that you have just opened a new savings account that earns 4 percent interest per year. The interest that you earn is
# paid at the end of the year, and is added to the balance of the savings account.
# Write a program that begins by reading the amount of money deposited into the account from the user.
# Then your program should compute and display the amount in the savings account after 1, 2, and 3 years.
# Display each amount so that it is rounded to 2 decimal places.

# Define constants
INTEREST_RATE = 0.04

# Read the user's amount of deposited money
initial_amount = (float(input("Enter the amount of money deposited into the account: $")))

# Calculate the amount of savings with interest
interest = initial_amount * INTEREST_RATE
year1 = interest + initial_amount
year2 = interest * 2 + initial_amount
year3 = interest * 3 + initial_amount

# Display the result
print("Total Amount for: ")
print("Year 1: $%.2f" % year1)
print("Year 2: $%.2f" % year2)
print("Year 3: $%.2f" % year3)