/**
 * @author mychin
 * Exercise02_21.java 
 * 13 Nov 2022 4:03:41 pm
 * 
 * (Financial application: calculate future investment value) Write a program that reads in investment amount,
 * annual interest rate, and number of years and displays the future investment value using the following formula: 
 * 				futureInvestmentValue = investmentAmount x (1 + monthlyInterestRate) ^ numberofYears * 12
 * 
 * For example, if you enter amount 1000, annual interest rate 3.25%, and number of years 1, the future investment value
 * is 1032.98.
 * 
 * Here is a sample run:
 * Enter investment amount: 1000.56
 * Enter annual interest rate in percentage: 4.25
 * Enter number of years: 1
 * Future value is $1043.92
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_21 
{
	
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter investment amount: ");
		double investmentAmount = input.nextDouble();
		System.out.print("Enter annual interest rate in percentage: ");
		double interestRate = input.nextDouble();
		System.out.print("Enter number of years: ");
		double numberofYears = input.nextDouble();
		
		// Calculate the future investment value
		double monthlyInterestRate = (interestRate / 100) / 12;
		double futureInvestmentValue = investmentAmount * (Math.pow((1 + monthlyInterestRate), numberofYears * 12));
		
		// Display the result
		System.out.print("Future value is $"+(int)(100 * futureInvestmentValue) / 100.0);
		
	}

}
