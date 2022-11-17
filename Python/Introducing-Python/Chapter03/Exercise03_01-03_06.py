# 3.1 How many seconds are in an hour? Use the interactive interpreter as a calculator and multiply the number of seconds in a minute (60) by the number of minutes in an hour (also 60).
x = 60 * 60
print (x)

# 3.2 Assign the result from the previous task (seconds in an hour) to a variable called seconds_per_hour.
seconds_per_hour = x

# 3.3 How many seconds are in a day? Use your seconds_per_hour variable.
y = seconds_per_hour * 24
print (y)

# 3.4 Calculate seconds per day again, but this time save the result in a variable called seconds_per_day.
seconds_per_day = seconds_per_hour * 24
print (seconds_per_day)

# 3.5 Divide seconds_per_day by seconds_per_hour. Use floating-point (/) division.
print (seconds_per_day / seconds_per_hour)

# 3.6 Divide seconds_per_day by seconds_per_hour, using integer (//) division. Did this number agree with the floating-point value from the previous question, aside from the final .0?
print (seconds_per_day // seconds_per_hour)
