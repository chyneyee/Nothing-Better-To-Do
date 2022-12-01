# 01-12-2022 3:00 pm
# Exercise 46: What Color Is That Square?
# Positions on a chess board are identified by a letter and a number. The letter identifies the column, while the number identifies the row, as shown below.
# Write a program that reads a position from the user. Use an if statement to determine if the column begins with a black square or a white square. 
# Then use modular arithmetic to report the color of the square in that row. For example, if the user enters a1 then your program should report that the square is black. If the user enters d5 then your program should report that the square is white. 
# Your program may assume that a valid position will always be entered. It does not need to perform any error checking.

# Prompts for input from user
position = input("Enter your position (e.g. a5, g3): ")

# Determines the positions with black and white square
alphabet = position[0]
number = int(position[1])
black = ['a','c','e','g']
white = ['b','d','f','h']

if alphabet in black and number % 2 != 0:
    colour = "black"
elif alphabet in white and number % 2 == 0:
    colour = "black"
else:
    colour = "white"

# Print invalid position number is between 1 - 8 else display the result 
if number <= 0 or number >= 9:
     print("Invalid position.")
     exit()
else:
    print("Your position is on a {} square." . format(colour))