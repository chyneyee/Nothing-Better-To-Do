# 6.2 Assign the value 7 to the variable guess_me, and the value 1 to the variable number. Write a while loop that compares number with guess_me.
# Print 'too low' if number is less than guess_me. 
# If number equals guess_me, print 'found it!' and then exit the loop.
# If number is greater than guess_me, print 'oops' and then exit the loop.
# Increment number at the end of the loop.

guess_me = 7
number = 1
while True:
    if number < guess_me:
        print ('too low')
    elif number == guess_me:
        print ('found it!')
        break
    elif number > guess_me:
        print ('oops')
        break
    number += 1
