# 30-06-2023 11:10 am
# Exercise 64: Discount Table
# A particular retailer is having a 60 percent off sale on a variety of discontinued products. 
# The retailer would like to help its customers determine the reduced price of the merchandise by having a printed discount table on the shelf that shows the original prices and the prices after the discount has been applied.
# Write a program that uses a loop to generate this table, showing the original price, the discount amount, and the new price for purchases of $4.95, $9.95, $14.95, $19.95 and $24.95.
# Ensure that the discount amounts and the new prices are rounded to 2 decimal places when they are displayed.

org_price = [4.95, 9.95, 14.95, 19.95, 24.95]
discount = 0.6

print("Price | Discount Amount | New Price")
for price in org_price:
    discount_amt = discount * price
    print("$",price, " | ", "${:.2f}".format(discount_amt), " | ","${:.2f}".format(price-discount_amt))
 

