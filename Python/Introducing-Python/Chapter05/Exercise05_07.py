# 5.7 Do the same, with format() formatting.

names = ['duck','gourd','spitz']
for name in names:
    caps = name.capitalize()
    print("{}y Mc{}face".format(caps, caps))