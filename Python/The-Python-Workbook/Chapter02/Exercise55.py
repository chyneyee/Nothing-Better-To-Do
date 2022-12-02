# 02-12-2022 2:35 pm
# Exercise 55: Wavelengths of Visible Light
# The wavelength of visible light ranges from 380 to 750 nanometers (nm). 
# While the spectrum is continuous, it is often divided into 6 colours as shown below:
# Colour                   Wavelength (nm)
# Violet                  380 to less than 450
# Blue                    450 to less than 495
# Green                   495 to less than 570
# Yellow                  570 to less than 590
# Orange                  590 to less than 620
# Red                     620 to 750
# Write a program that reads a wavelength from the user and reports its colour. 
# Display an appropriate error message if the wavelength entered by the user is outside of the visible spectrum.

# Prompts for input from user
wavelength = float(input("Enter the wavelength (nm): "))

# Determines the colour based from the entered wavelength 
if wavelength >= 380 and wavelength < 450:
    colour = "Violet"
elif wavelength >= 450 and wavelength < 495:
    colour = "Blue"
elif wavelength >= 495 and wavelength < 570:
    colour = "Green"
elif wavelength >= 570 and wavelength < 590:
    colour = "Yellow"
elif wavelength >= 590 and wavelength < 620:
    colour = "Orange"
elif wavelength >= 620 and wavelength < 750:
    colour = "Red"
else:
    colour = ""

# Display the result
if colour == "":
    print("The entered wavelength is outside of the visible spectrum.")
else:
    print("The corresponding color to the wavelength {} nm is {}." . format(wavelength,colour))
