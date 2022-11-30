# 3011-2022 4:26 pm
# Exercise 42: Note to Frequency
# The following table lists an octave of music notes, beginning with middle C, along with their frequencies.
# Note Frequency (Hz)
# C4      261.63
# D4      293.66
# E4      329.63
# F4      349.23
# G4      392.00
# A4      440.00
# B4      493.88
# Begin by writing a program that reads the name of a note from the user and displays the note's frequency. Your program should support all of the notes listed previously.

# Define constants
C4_FREQUENCY = 261.63
D4_FREQUENCY = 293.66
E4_FREQUENCY = 329.63
F4_FREQUENCY = 349.23
G4_FREQUENCY = 392.00
A4_FREQUENCY = 440.00
B4_FREQUENCY = 493.88

# Prompts for input from user
name = input("Enter the two character note name: ")

# Define the variables
note = name[0]
octave = int(name[1])

if note == "C":
    freq = C4_FREQUENCY
elif note == "D":
    freq = D4_FREQUENCY
elif note == "E":
    freq = E4_FREQUENCY
elif note == "F":
    freq = F4_FREQUENCY
elif note == "G":
    freq = G4_FREQUENCY
elif note == "A":
    freq = A4_FREQUENCY
elif note == "B":
    freq = B4_FREQUENCY

freq = freq / 2 ** (4 - octave)

# Display the result
print("The frequency of", name, "is", freq)


