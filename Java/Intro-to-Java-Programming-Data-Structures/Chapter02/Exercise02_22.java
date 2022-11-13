/**
 * @author mychin
 * Exercise02_22.java 
 * 13 Nov 2022 4:22:27 pm
 * 
 * (Financial application: monetary units) Rewrite Listing 2.10, ComputeChange.java, to fix the possible loss of accuracy
 * when converting a double value to an int value. Enter the input as an integer whose last two digits represent the cents.
 * For example, the input 1156 represents 11 dollars and 56 cents.
 * 
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_22 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter an amount: ");
		int amount = input.nextInt();
		
		// Find the number of dollars
		int numberOfDollars = amount / 100;
		
		// Find the number of cents
		int numberOfCents = amount % 100;
		
		// Display the result
		System.out.print("The result is "+numberOfDollars+ " dollars and "+numberOfCents+ " cents.");

	}

}
