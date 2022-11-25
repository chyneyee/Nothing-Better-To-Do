# 25-11-2022 11:46 am
# Exercise 31: Units of Pressure
# In this exercise you will create a program that reads a pressure from the user in kilopascals. Once the pressure has been read
# your program should report the equivalent pressure in pounds per square inch, milimetres of mercury and atmospheres. Use
# your research skills to determine the conversion factors between these units.

# Define constants
PPSI = 0.14504     # pounds per square inch
MMHG = 7.50064     # milimetres of mercury
ATM = 0.00987      # atmosphere

# Read input from the user
kilopascals = float(input("Enter the pressure in kilopascals: "))

# Calculate the conversion
pounds = kilopascals * PPSI
milimetres = kilopascals * MMHG
atmospheres = kilopascals * ATM

# Display the result
print("{} kilopascals is equivalent to {:.5f} pounds per square inch.". format(kilopascals,pounds))
print("{} kilopascals is equivalent to {:.5f} milimetres of mercury.". format(kilopascals,milimetres))
print("{} kilopascals is equivalent to {:.5f} milimetres of atmospheres.". format(kilopascals,atmospheres))