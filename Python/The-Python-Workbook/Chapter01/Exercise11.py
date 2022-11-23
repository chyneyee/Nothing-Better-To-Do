# 24-11-2022 10:39 am
# Exercise 11: Fuel Efficiency
# In the United States, fuel efficiency for vehicles is normally expressed in miles-per-gallon (MPG). 
# In Canada, fuel efficiency is normally expressed in litres-per-hundred kilometres (L/100 km). 
# Use your research skills to determine how to convert from MPG to L/100 km. 
# Then create a program that reads a value from the user in American units and displays the equivalent fuel efficiency in Canadian units.

# Reads user's input
mpg = float(input("Enter miles per gallon: "))

# Calculate the fuel efficiency
lper100 = 235.21 / mpg

# Display the fuel efficiency in Canadian units
print("The fuel efficiency in litres per hundred kilometres (L/100 km) is: %.2f L/100 km" % lper100)
