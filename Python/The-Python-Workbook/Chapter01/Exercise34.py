# 25-11-2022 12:57 pm
# Exercise 34: Day Old Bread
# A bakery sells loaves of bread for $3.49 each. Day old bread is discounted by 60 percent.
# Write a program that begins by reading the number of loaves of day old bread being purchased from the user. Then your program
# should display the regular price for the bread, the discount because it is a day old, and the total price.
# Each of these amounts should be displayed on its own line with an appropriate label. All of the values should be displayed
# using two decimal places, and the decimal point in all of the numbers should be aligned when reasonable values are entered
# by the user.

# Define constants
BREAD_PRICE = 3.49
DISCOUNT_RATE = 0.6

# Prompts for user's input
amount_loaves = int(input("Number of purchased for loaves of day old bread: "))

regular_price = amount_loaves * BREAD_PRICE
discounted_price = regular_price * DISCOUNT_RATE
total = regular_price - discounted_price

# Display the result
print("Regular price for a loaf of bread: $%5.2f" % regular_price)
print("The discounted price for day old bread: $%5.2f" % discounted_price)
print("Total price of purchased bread: $%5.2f" % total)

