# 24-11-2022 11:40 am
# Exercise 13: Making Change
# Consider the software that runs on a self-checkout machine. One task that it must be able to perform is to determine how much change to 
# provide when the shopper pays for a purchase with cash.
# Write a program that begins by reading a number of cents from the user as an integer. 
# Then your program should compute and display the denominations of the coins that should be used to give that amount of change to the shopper. 
# The change should be given using as few coins as possible. Assume that the machine is loaded with pennies, nickels, dimes, quarters, loonies and toonies.
# A one dollar coin was introduced in Canada in 1987. It is referred to as a loonie because one side of the coin has a loon (a type of bird) on it. 
# The two dollar coin, referred to as a toonie, was introduced 9 years later. 
# It's name is derived from the combination of the number two and the name of the loonie.

# Read user's input
cents = (int(input("Enter the number of cents: ")))

# Calculate the denominations
cents_per_toonie = 200
cents_per_loonie = 100
cents_per_quarter = 25
cents_per_dime = 10
cents_per_nickle = 5

toonies = int(cents / cents_per_toonie)     # number of toonies
cents = cents - (toonies * 200)     # deduct the number of toonies for remaining cents
loonies = int(cents / cents_per_loonie)
cents = cents - (loonies * 100)
quarters = int(cents / cents_per_quarter)
cents = cents - (quarters * 25)
dimes = int(cents / cents_per_dime)
cents = cents - (dimes * 10)
nickles = int(cents / cents_per_nickle)
pennies = cents

# Display the result
print("Toonies: %d" % toonies)
print("Loonies: %d" % loonies)
print("Quarters: %d" % quarters)
print("Dimes: %d" % dimes)
print("Nickles: %d" % nickles)
print("Pennies: %d" % pennies)
