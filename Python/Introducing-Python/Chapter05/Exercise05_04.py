# 5.4 Write a form letter by using new-style formatting. Save the following string as letter (you'll use it in the next exercise):
# Dear {salutation} {name},
#
# Thank you for your letter. We are sorry that our {product} {verbed} in your {room}. Please note that it should never be used
# in a {room}, especially near any {animals}.
#
# Send us your receipt and {amount} for shipping and handling. We will send you another {product} that, in our tests, is
# {percent}% less likely to have {verbed}.
#
# Thank you for your support.
#
# Sincerely,
# {spokesman}
# {job_title}

letter = '''Dear {salutation} {name}, \n
Thank you for your letter. We are sorry that our {product} {verbed} in your {room}. Please note that it should never be used
in a {room}, especially near any {animals}. \n
Send us your receipt and {amount} for shipping and handling. We will send you another {product} that, in our tests, is
{percent}% less likely to have {verbed}.\n\n
Thank you for your support.\n\n
Sincerely,
{spokesman}
{job_title}'''
print(letter)
