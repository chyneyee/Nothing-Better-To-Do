# 30-06-2023 12:19 pm
# Exercise 66: No More Pennies
# February 4, 2013 was the last day that pennies were distributed by the Royal Canadian Mint.
# Now that pennies have been phased out retailers must adjust totals so that they are multiples of 5 cents when they are paid
# for with cash (credit card and debit card transactions continue to be charged to the penny).
# While retailers have some freedom in how they do this, most choose to round to the closest nickel.
# Write a program that reads prices from the user until a blank line is entered.
# Display the total cost of all the entered items on one line, followed by the amount due if the customer pays with cash on a
# second line. The amount due for a cash payment amount is to begin by determining how many pennies would be needed to pay
# the total. 
# Then compute the remainder when this number of pennies is divided by 5. 
# Finally, adjust the total down if the remainder is less than 2.5. Otherwise adjust the total up.

PENNIES_PER_NICKEL = 5
NICKEL = 0.05

# Total cost of the item
total = 0.00

# Read the user's price
price = input("Enter the price for the item (blank to quit): $")

# Continue reading items until a blank line is entered
while price != "":

    # Add the cost of the item
    total = total + float(price)

    # Read the cost of the next item
    price = input("Enter the price for the item (blank to quit): $")

# Display the total cost
print("The exact total cost is $%.02f" % total)

# Calculate the number of pennies remained if the total was paid using nickels
rem_pennies = total * 100 % PENNIES_PER_NICKEL

# if remaining pennies is less than 2.5, round down by subtracting that number of pennies from the total
if rem_pennies < PENNIES_PER_NICKEL / 2:
    cash_total = total - rem_pennies / 100
else:

    # Add a nickel and then subtract that number of pennies
    cash_total = total + NICKEL - rem_pennies / 100

# Display amount due when paying with cash
print("The cash amount payable is $%.02f" % cash_total)