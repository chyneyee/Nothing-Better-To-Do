# 02-12-2022 2:48 pm
# Exercise 56: Frequency to Name
# Electromagnetic radiation can be classified into one of 7 categories according to its frequency, as shown in the table below:
# Name                        Frequency Range (Hz)
# Radio Waves                 Less than 3 × 10^9
# Microwaves                  3 × 10^9 to less than 3 × 10^12
# Infrared Light              3 × 10^12 to less than 4.3 × 10^14
# Visible Light               4.3 × 10^14 to less than 7.5 × 10^14
# Ultraviolet Light           7.5 × 10^14 to less than 3 × 10^17
# X-Rays                      3 × 10^17 to less than 3 × 10^19
# Gamma Rays                  3 × 10^19 or more
# Write a program that reads the frequency of some radiation from the user and displays name of the radiation as part of an appropriate message.

# Prompts for input from user
frequency = float(input("Enter the frequency (Hz): "))

# Determines the name for various frequency range
if frequency < 3e9:
    category = "Radio Waves"
elif frequency >= 3e9 and frequency < 3e12:
    category = "Microwaves"
if frequency >= 3e12 and frequency < 4.3e14:
    category = "Infrared Light"
elif frequency >= 4.3e14 and frequency < 7.5e14:
    category = "Visible Light"
elif frequency >= 7.5e14 and frequency < 3e17:
    category = "Ultraviolet Light"
elif frequency >= 3e17 and frequency < 3e19:
    category = "X-Rays"
elif frequency >= 3e19:
    category = "Gamma Rays"

# Display the result
print("The frequency is in the {}." . format(category))