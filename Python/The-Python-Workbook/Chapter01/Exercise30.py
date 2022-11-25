# 25-11-2022 11:36 am
# Exercise 30: Celsius to Fahrenheit and Kevin
# Write a program that begins by reading a temperature from the user in degrees Celsius. Then your program should display the
# equivalent temperature in degrees Fahrenheit and degrees Kelvin. The calculations needed to convert between different units
# of temperature can be found on the Internet.

# Read the input from user
celsius = float(input("Enter the degrees in Celsius: "))

# Calculate the conversion for the temperature
fahrenheit = (celsius * 1.8) + 32
kelvin = celsius +273.15

# Display the conversion result
print("The {} celsius is equivalent to {} Fahrenheit.". format(celsius,fahrenheit))
print("The {} celsius is equivalent to {} K." .format(celsius,kelvin))