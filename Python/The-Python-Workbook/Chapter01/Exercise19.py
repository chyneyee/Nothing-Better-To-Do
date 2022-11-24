# 24-11-2022 2:28 pm
# Exercise 19: Free Fall
# Create a program the determines how quickly an object is traveling when it hits the ground.
# The user will enter the height from which the object is dropped in metres (m).
# Because the object is dropped its initial speed is 0 m/s. Assume that the acceleration due to gravity is 9.8 m/s2.
# You can use the formula vf = vi2 + 2ad to compute the final speed, vf, when the initial speed, vi, acceleration, a, and distance, d, are known.

import math

# Define constants
GRAVITY = 9.8

# Read the user's input
height = float(input("Enter the height in metres: "))

# Calculate the final speed
vf = math.sqrt((math.pow(0,2) + 2 * GRAVITY * height))

# Display the resukt
print("The final speed of the object is %.2f m/s" % vf)


