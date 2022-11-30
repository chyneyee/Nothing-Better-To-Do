# 30-11-2022 4:43 pm
# Exercise 43: Frequency to Note
# In the previous question you converted from note name to frequency. In this question you will write a program that reverses that process. 
# Begin by reading a frequency from the user. If the frequency is within one Hertz of a value listed in the table in
# the previous question then report the name of the note. 
# Otherwise report that the frequency does not correspond to a known note. 
# In this exercise you only need to consider the notes listed in the table. There is no need to consider notes from other octaves.

# Define constants
C4_FREQUENCY = 261.63
D4_FREQUENCY = 293.66
E4_FREQUENCY = 329.63
F4_FREQUENCY = 349.23
G4_FREQUENCY = 392.00
A4_FREQUENCY = 440.00
B4_FREQUENCY = 493.88
LIMIT = 1

# Prompts input from user
freq = float(input("Enter a frequency (Hz): "))

if freq >= C4_FREQUENCY - LIMIT and freq <= C4_FREQUENCY + LIMIT:
    note = "C4"
elif freq >= D4_FREQUENCY - LIMIT and freq <= D4_FREQUENCY + LIMIT:
    note = "D4"
elif freq >= E4_FREQUENCY - LIMIT and freq <= E4_FREQUENCY + LIMIT:
    note = "E4"
elif freq >= F4_FREQUENCY - LIMIT and freq <= F4_FREQUENCY + LIMIT:
    note = "F4"
elif freq >= G4_FREQUENCY - LIMIT and freq <= G4_FREQUENCY + LIMIT:
    note = "G4"
elif freq >= A4_FREQUENCY - LIMIT and freq <= A4_FREQUENCY + LIMIT:
    note = "A4"
elif freq >= B4_FREQUENCY - LIMIT and freq <= B4_FREQUENCY + LIMIT:
    note = "B4"
else:
    note = ""

# Display the result
if note == "":
    print("There is no note that corresponds to that frequency.")
else:
    print("That frequency is",note)

