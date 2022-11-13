/**
 * @author mychin
 * Exercise02_14.java 
 * 13 Nov 2022 12:22:27 pm
 * 
 * (Health application: computing BMI) Body Mass Index (BMI) is a measure of health on weight. It can be calculated
 * by taking your weight in kilograms and dividing, by the square of your height in metres.
 * 
 * Write a program that prompts the user to enter a weight in pounds and heights in inches and displays the BMI. 
 * Note one pound is 0.45359237 kilograms and once inch is 0.0254 metres. 
 * 
 * Here is a sample run:
 * Enter weight in pounds: 95.5
 * Enter height in inches: 50
 * BMI is 26.8573
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_14 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter weight in pounds: ");
		double pounds = input.nextDouble();
		System.out.print("Enter height in inches: ");
		double inches = input.nextDouble();
		
		// Calculate the BMI
		double kilograms = pounds * 0.45359237;
		double metres = inches * 0.0254;
		double bmi = kilograms / (metres * metres);
		
		// Display the result
		System.out.println("BMI is "+bmi);
	}

}
