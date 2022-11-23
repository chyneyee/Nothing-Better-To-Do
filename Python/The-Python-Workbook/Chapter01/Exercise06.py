# 23-11-2022 2:41 pm
# Exercise 6: Tax and Tip
# The program that you create for this exercise will begin by reading the cost of a meal ordered at arestaurant from the user.
# Then your program will compute the tax and tip for the meal. Use your local tax rate when computing the amount of tax owing.
# Compute the tip as 18 percent of the meal amount (without the tax).
# The output from your program should include the tax amount, the tip amount, and the grand total for the meal including both
# the tax and the tip. Format the output so that all of the values are displayed using two decimal places.

# Define the constants
TAX_RATE = 0.1
TIPS_RATE = 0.18

# Prompts the user for input
cost = float(input("Enter the cost of a meal: $"))

# Calculate the tax and tip for the meal
tax_amount = cost * TAX_RATE
tip_amount = cost * TIPS_RATE
total = cost + tax_amount + tip_amount

# Display the result
print("Tax: $%.2f" % tax_amount)
print("Tips: $%.2f" % tip_amount)
print("TOTAL: $%.2f" % total)