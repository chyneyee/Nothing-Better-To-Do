/**
 * @author mychin
 * Exercise02_03.java 
 * 12 Nov 2022 11:22:43 am
 * 
 * (Convert metres into feet) Write a program that reads a number in metres, converts it to feet, and displays
 * the result. One metre is 3.2786 feet. 
 * 
 * Here is a sample run:
 * Enter a value for meter: 10
 * 10.0 metres is 32.786 feet
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_03 
{
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompt the user for input
		System.out.print("Enter a value for meter: ");
		double metre = input.nextDouble();
		
		// Calculate the conversion metres into feet
		double feet = metre * 3.2786;
		
		// Display results
		System.out.println(metre + " metres is " +feet+ " feet");

	}

}
