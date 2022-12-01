# 01-12-2022 1:42 pm
# Exercise 44: Faces of Money
# It is common for images of a country’s previous leaders, or other individuals of historical significance, to appear on its money. # The individuals that appear on banknotes in the United States are listed in below.
# Individual            Amount
# George Washington       $1
# Thomas Jefferson        $2
# Abraham Lincoln         $5
# Alexander Hamilton      $10
# Andrew Jackson          $20
# Ulysses S. Grant        $50
# Benjamin Franklin       $100
# Write a program that begins by reading the denomination of a banknote from the user. 
# Then your program should display the name of the individual that appears on the banknote of the entered amount. 
# An appropriate error message should be displayed if no such note exists.

# Prompts for input from user
denomination = int(input("Enter the denomination of a banknote: $"))

# Determines the individual that appears on the banknote
if denomination == 1:
    person = "George Washington"
elif denomination == 2:
    person = "Thomas Jefferson"
elif denomination == 5:
    person = "Abraham Lincoln"
elif denomination == 10:
    person = "Alexander Hamilton"
elif denomination == 20:
    person = "Andrew Jackson"
elif denomination == 50:
    person = "Ulysses S. Grant"
elif denomination == 100:
    person = "Benjamin Franklin"
else:
    print("I'm sorry. No such note exists.")
    exit()

# Display the result
print("The ${} dollar will have {}'s face on it." . format(denomination,person))