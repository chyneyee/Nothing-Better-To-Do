# 5.3 Write the following poem by using old-style formatting. Substitute the strings 'roast beef', 'ham', 'head', and 'clam' into this string:
# My kitty cat likes %s,
# My kitty cat likes %s,
# My kitty cat fell on his %s
# And now thinks he's a %s.

poem = '''My kitty cat likes %s,
My kitty cat likes %s,
My kitty cat fell on his %s
And now thinks he's a %s.'''
args = ('roast beef', 'ham', 'head', 'clam')
print(poem % args)
