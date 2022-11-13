/**
 * @author mychin
 * Exercise02_20.java 
 * 13 Nov 2022 3:50:16 pm
 * 
 * (Financial application: calculate interest) If you know the balance and the annual percentage interest rate, you
 * can compute the interest on the next monthly payment using the following formula:
 * 			interest = balance x (annualInterestRate / 1200)
 * 
 * Write a program that reads the balance and the annual percentage interest rate and displays the interest for the next month.
 * 
 * Here is a sample run:
 * Enter balance and interest rate (e.g., 3 for 3%): 1000 3.5
 * The interest is 2.91667
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_20 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter balance and interest rate (e.g., 3 for 3%): ");
		double balance = input.nextDouble();
		double annualInterestRate = input.nextDouble();
		
		// Calculate the interest
		double interest = balance * (annualInterestRate / 1200);
		
		// Display the result
		System.out.print("The interest is "+(int)(100 * interest) / 100.0);

	}

}
