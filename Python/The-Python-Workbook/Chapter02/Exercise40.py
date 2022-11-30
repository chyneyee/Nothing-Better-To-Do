# 30-11-2022 4:00 pm
# Exercise 40: Sound Levels
# The following table lists the sound level in decibels for several common noises.
# Write a program that reads a sound level in decibels from the user. If the user enters a decibel level that matches one of the noises in the table then
# your program should display a message containing only that noise. 
# If the user enters a number of decibels between the noises listed then your program should display a message indicating which noises the level is between. 
# Ensure that your program also generates reasonable output for a value smaller than the quietest noise in the table, and for a
# value larger than the loudest noise in the table.

# Prompts user for the input
decibels = int(input("Enter the decibels: "))

# Determine the noise levels
if decibels < 40:
    print("This is quieter than a Quiet Room.")
elif decibels == 40:
    print("That sounds like a Quiet Room.")
elif decibels > 40 and decibels < 70:
    print("That sounds between a Quiet Room and an Alarm Clock.")
elif decibels == 70:
    print("That sounds like an Alarm Clock.")
elif decibels > 70 and decibels < 106:
    print("That sounds between an Alarm Clock and a Gas Lawnmower.")
elif decibels == 106:
    print("That sounds like a Gas Lawnmower.")
elif decibels > 106 and decibels < 130:
    print("That sounds between a Gas Lawnmower and a Jackhammer.")
elif decibels == 130:
    print("That sounds like a Jackhammer.")
elif decibels > 130:
    print("That is even louder than a Jackhammer.")

