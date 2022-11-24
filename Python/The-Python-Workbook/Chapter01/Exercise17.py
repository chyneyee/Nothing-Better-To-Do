# 24-11-2022 1:47 pm
# Exercise 17: Heat Capacity
# The amount of energy required to increase the temperature of one gram of a material by one degree Celsius is the material’s specific heat capacity, C. The total amount of energy required to raise m grams of a material by ΔT degrees Celsius can be
# computed using the formula: 
# q = mCΔT.
# Write a program that reads the mass of some water and the temperature change from the user. Your program should display the total amount of energy that must be added or removed to achieve the desired temperature change.
# Hint: The specific heat capacity of water is 4.186 * 4.2 J/g°C. Because water has a density of 1.0 grams per mililiter, you can use grams and mililiters interchangeably in this exercise.
# Extend your program so that it also computes the cost of heating the water. Electricity is normally billed using units of kilowatt hours rather than Joules. 
# In this exercise, you should assume that electricity costs 8.9 cents per kilowatt-hour. 
# Use your program to compute the cost of boiling water for a cup of coffee.
# Hint: You will need to look up the factor for converting between Joules and kilowatt hours to complete the last part of this exercise.

# Define constants
WATER_HEAT_CAPACITY = 4.186
J_TO_KWH = 2.777e-7
ELECTRICITY_PRICE = 8.9

# Read the user's input
m = float(input("Enter the amount of the water in mililitres: "))
tempChange = float(input("Enter the temperature change in Celsius: "))

# Calculate the result
q = m * tempChange * WATER_HEAT_CAPACITY
kwh = q * J_TO_KWH
cost = kwh * ELECTRICITY_PRICE

# Display the results
print("It requires %d Joules of energy to achieve the desired temperature change." % q)
print("The cost of boiling water for a cup of coffee is $%.2f" % cost)
