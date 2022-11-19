# 5.6 After public polls to name things, a pttern emerged: an English submarine (Boaty McBoatface), an Australian racehorse (Horsey McHorseface), and a Swedish train (Trainy McTrainface). Use % formatting to print the winning name at the state fair for a prize duck, gourd, and spitz.

names = ['duck','gourd','spitz']
for name in names:
    caps = name.capitalize()
    print("%sy Mc%sface" % (caps, caps))
