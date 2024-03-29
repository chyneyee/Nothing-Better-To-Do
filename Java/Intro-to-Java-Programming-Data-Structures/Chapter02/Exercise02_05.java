/**
 * @author mychin
 * Exercise02_05.java 
 * 12 Nov 2022 12:00:19 pm
 * 
 * (Financial application: calculate tips) Write a program that reads the subtotal and the gratuity rate and then
 * computes the gratuity and total. 
 * For example, if the user enters 10 for subtotal and 12% for gratuity rate, the program displays $1.2 as gratuity
 * and $11.2 as total. 
 * 
 * Here is a sample run:
 * Enter the subtotal and a gratuity rate: 10 12
 * The gratuity is $1.2 and total is $11.2
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_05 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the subtotal and a gratuity rate: ");
		double subtotal = input.nextDouble();
		double gratuity = input.nextDouble();
		
		// Calculate the tips
		gratuity = (gratuity / 100) * subtotal;
		double total = subtotal + gratuity;
		
		// Display results
		System.out.println("The gratuity is $" +gratuity+ " and total is $" +total);

	}

}
