# 29-11-2022 4:47 pm
# Exercise 37: Vowel or Consonant
# In this exercise you will create a program that reads a letter of the alphabet from the user. 
# If the user enters a, e, i, o or u then your program should display a message indicating that the entered letter is a vowel. 
# If the user enters y then your program should display a message indicating that sometimes y is a vowel, and sometimes y is a
# consonant. Otherwise your program should display a message indicating that the letter is a consonant.

# Prompts for input from user
letter = input("Enter a letter: ")

# Display the result based on the entered letter
if letter == "a" or letter == "e" or letter == "i" or letter == "o" or letter == "u":
    print("It is a vowel.")
elif letter == "y":
    print("Sometimes y is a vowel, and sometimes y is a consonant.")
else:
    print("It is a consonant.")

