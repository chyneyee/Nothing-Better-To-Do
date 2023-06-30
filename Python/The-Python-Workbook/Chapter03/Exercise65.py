# 30-06-2023 12:00 pm
# Exercise 65: Temperature Conversion Table
# Write a program that displays a temperature conversion table for degrees Celsius and degrees Fahrenheit.
# The table should include rows for all temperatures between 0 and 100 degrees Celsius that are multiples of 10 degrees Celsius.
# Include appropriate headings on your columns.
# The formula for converting between degrees Celsius and degrees Fahrenheit can be found on the Internet.

# Print table heading
print("Celsius | Fahrenheit")

# Loop from 0 to 100 and convert the temperature to Fahrenheit
for celsius in range(0, 101, 10):
    fahrenheit = (celsius * 1.8) + 32
    print(celsius, "C", " | ", fahrenheit, "F")
