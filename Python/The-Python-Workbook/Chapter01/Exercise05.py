# 23-11-2022 2:27 pm
# Exercise 5: Bottle Deposits
# In many jurisdictions a small deposit is added to drink containers to encourage people to recycle them. 
# In one particular jurisdiction, drink containers holding one litre or less have a $0.10 deposit, and drink containers holding more than one litre have a $0.25 deposit.
# Write a program that reads the number of containers of each size from the user. Your program should continue by computing and displaying the refund that will be received for returning those containers. Format the output so that it includes a dollar sign and two digits to the right of the decimal point.

# Define constraints
LESS_ONE_LITRE = 0.1
MORE_ONE_LITRE = 0.25

# Prompts the user for input
container1 = int(input("Enter the number of containers less than 1 litre: "))
container2 = int(input("Enter the number of containers more than 1 litre: "))

# Calculate the refund
total = (container1 * LESS_ONE_LITRE) + (container2 * MORE_ONE_LITRE)

# Display the result
print("Your total refund for returning the drink containers is $%.2f" % total)
