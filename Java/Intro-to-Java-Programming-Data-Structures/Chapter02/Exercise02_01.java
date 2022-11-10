/**
 * @author mychin
 * Exercise02_01.java 
 * 10 Nov 2022 3:00:19 pm
 * 
 * (Convert mile to kilometer) Write a program that reads a mile in a double value from the console, converts it to kilometers, and display the result.
 * The formula for the conversion is as follows:
 * 				1 mile = 1.6 kilometers
 * 
 * Here is a sample run: 
 * Enter mile: 96
 * 96 mile is 153.6 kilometres
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_01 
{
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);

		// Prompt the user for input
		System.out.println("Enter miles: ");
		double miles = input.nextDouble();

		// Convert mile to kilometre
		double kilometres = miles * 1.6;

		// Display results
		System.out.println(miles + " miles is " + kilometres + " kilometres");

	}

}
