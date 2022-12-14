/**
 * @author mychin
 * Exercise03_06.java 
 * 14 Dec 2022 11:22:13 am
 * (Health application: BMI) Revise Listing 3.4, ComputeAndInterpretBMI.java, to let the user enter weight, feet, and 
 * inches. 
 * For example, if a person is 5 feet and 10 inches, you will enter 5 for feet and 10 for inches.
 * Here is a sample run:
 * Enter weight in pounds: 140
 * Enter feet: 5
 * Enter inches: 10
 * BMI is 20.087
 * Normal
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_06 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompt the user to enter weight in pounds
		System.out.print("Enter weight in pounds: ");
		double weight = input.nextDouble();
		
		// Prompt the user to enter height in feet and inches
		System.out.print("Enter feet: ");
		int feet = input.nextInt();
		System.out.print("Enter inches: ");
		int inches = input.nextInt();
		
		double heightInInches = feet * 12 + inches;		// Convert feet to inches
		
		final double KILOGRAMS_PER_POUND = 0.45359237;	// Constant
		final double METRES_PER_INCH = 0.0254;			// Constant
			
		// Compute BMI
		double weightInKilograms = weight * KILOGRAMS_PER_POUND;
		double heightInMetres = heightInInches * METRES_PER_INCH;
		double bmi = weightInKilograms / (heightInMetres * heightInMetres);
		
		// Display result
		System.out.printf("BMI is %.3f\n", bmi);
		if (bmi < 18.5)
		{
			System.out.println("Underweight");
		}
		else if (bmi < 25)
		{
			System.out.println("Normal");
		}
		else if (bmi < 30)
		{
			System.out.println("Overweight");
		}
		else
		{
			System.out.println("Obese");
		}
		
	}

}
