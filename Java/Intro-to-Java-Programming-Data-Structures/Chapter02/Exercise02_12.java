/**
 * @author mychin
 * Exercise02_12.java 
 * 13 Nov 2022 11:38:36 am
 * 
 * (Physics: finding runway length) Given an airplane's acceleration a and take-off speed v, you can compute the
 * minimum runway length needed for an airplane to take off using the following formula:
 * 			length = (v * v) / 2a
 * 
 * Write a program that prompts the user to enter v in metres/second (m/s) and the acceleration a in metres/second
 * squared (m/s2), then display the minimum runway length.
 * 
 *  Enter the speed and acceleration: 60 3.5
 *  The minimum runway length for this airplane is 514.286
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_12 
{
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the speed and acceleration: ");
		double speed = input.nextDouble();
		double acceleration = input.nextDouble();
		
		// Calculate the required minimum runway length
		double length = (speed * speed) / (2 * acceleration);
		
		// Display results
		System.out.print("The minimum runway length for this airplane is "+length);	

	}

}
