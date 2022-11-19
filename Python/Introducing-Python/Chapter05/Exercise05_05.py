# 5.5 Assign values to variable strings named 'salutation', 'name', 'product', 'verbed' (past tense verb), 'room', 'animals',
# 'percent', 'spokesman', and 'job_title'. Print letter with these values, using letter.format().

letter = '''Dear {salutation} {name}, \n
Thank you for your letter. We are sorry that our {product} {verbed} in your {room}. Please note that it should never be used
in a {room}, especially near any {animals}. \n
Send us your receipt and {amount} for shipping and handling. We will send you another {product} that, in our tests, is
{percent}% less likely to have {verbed}.\n\n
Thank you for your support.\n\n
Sincerely,
{spokesman}
{job_title}'''
print(letter.format(salutation = 'Mr.', name = 'Bebbington', product = 'pie', verbed = 'exploded',
room = 'bathroom', animals = 'cats',amount = '$25',percent = '45', spokesman = 'Mr Drinkwater', job_title = 'Pie Tester'))