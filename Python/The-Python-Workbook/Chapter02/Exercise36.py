# 29-11-2022 12:06 pm
# Exercise 36: Dog Years
# It is commonly said that one human year is equivalent to 7 dog years. However this simple conversion fails to recognize that dogs reach adulthood in approximately two years. As a result, some people believe that it is better to count each of the first two human years as 10.5 dog years, and then count each additional human year as 4 dog years.
# Write a program that implements the conversion from human years to dog years described in the previous paragraph. Ensure that your program works correctly for conversions of less than two human years and for conversions of two or more human years. 
# Your program should display an appropriate error message if the user enters a negative number.

# Prompts the user for input
human_age = int(input("Enter the human age: "))

# Calculate the age conversion
if human_age < 0:
    print("Please enter an age more than zero")
    exit()
elif human_age <= 2:
    dog_age = human_age * 10.5
elif human_age > 2:
    first_two_years = 10.5 * 2
    remaining_years = human_age - 2
    dog_age = first_two_years + (remaining_years * 4)
else:
    print("The dog's age in dog years is zero.")

# Display the result
print("The dog age in dog years is", dog_age)
   



