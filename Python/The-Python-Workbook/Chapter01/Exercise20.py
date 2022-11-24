# 24-11-2022 2:45 pm
# Exercise 20: Ideal Gas Law
# The ideal gas law is a mathematical approximation of the behavior of gasses as pressure, volume and temperature change. It is usually stated as: 
# PV = nRT
# where P is the pressure in Pascals, V is the volume in liters, n is the amount of substance in moles, R is the ideal gas constant, equal to 8.314 * J/
# mol K , and T is the temperature in degrees Kelvin.
# Write a program that computes the amount of gas in moles when the user supplies the pressure, volume and temperature. 
# Test your program by determining the number of moles of gas in a SCUBA tank. A typical SCUBA tank holds 12 liters of gas at
# a pressure of 20,000,000 Pascals (approximately 3,000 PSI). Room temperature is approximately 20 degrees Celsius or 68 degrees Fahrenheit.
# Hint: A temperature is converted from Celsius to Kelvin by adding 273.15 to it. To convert a temperature from Fahrenheit to Kelvin, deduct 32 from it, multiply it by 5 / 9 and then add 273.15 to it.

R = 8.314
Kelvin = 273.15

# Read the user's input
pressure = float(input("Enter the gas pressure: "))
volume = float(input("Enter the volume: "))
temperature = float(input("Enter the temperature change: "))

# Calculate the result
temp_to_kelvin = temperature + Kelvin   
n = pressure * volume / R * temp_to_kelvin

# Display the result
print("The amount of moles in he gas is %.2f" % n)
