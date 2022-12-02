# 02-12-2022 3:43 pm
# Exercise 57: Cell Phone Bill
# A particular cell phone plan includes 50 minutes of air time and 50 text messages for $15.00 a month. Each additional minute 
# of air time costs $0.25, while additional text messages cost $0.15 each. All cell phone bills include an additional charge of
# $0.44 to support 911 call centers, and the entire bill (including the 911 charge) is subject to 5 percent sales tax.
# Write a program that reads the number of minutes and text messages used in a month from the user. 
# Display the base charge, additional minutes charge (if any), additional text message charge (if any), the 911 fee, tax and 
# total bill amount. Only display the additional minute and text message charges if the user incurred costs in these categories. 
# Ensure that all of the charges are displayed using 2 decimal places.

# Prompts input from user
minutes = int(input("Enter the number of minutes used in a month: "))
text = int(input("Enter the number of text messages sent in a month: "))

# Calculate the bill charges
emergency_fee = 0.44
base_price = 15
extra_price_minutes = (minutes - 50) * 0.25
extra_price_text = (text - 50) * 0.15

# Display additional charges when minutes or text messages more than 50
if minutes > 50:
    print("Additional minutes charge: $%.2f" % extra_price_minutes)
else:
    extra_price_minutes = 0
if text > 50:
    print("Additional text message charge: $%.2f" % extra_price_text)
else:
    extra_price_text = 0

# Calculate the total bill amount
subtotal = base_price + extra_price_minutes + extra_price_text + emergency_fee
tax_charge = 0.05 * subtotal
total = tax_charge + subtotal

# Display the base price, charges for 911 and total amount
print("Base charge: $%.2f" % base_price)
print("Additional charge for 911: $%.2f" % emergency_fee)
print("Total Amount (with 5 per cent tax): $%.2f" % total)


