/**
 * @author mychin
 * Exercise03_31.java 
 * 16 Dec 2022 10:29:36 am
 * (Financials: currency exchange) Write a program that prompts the user to enter the exchange rate from 
 * currency in U.S. dollars to Chinese RMB. 
 * Prompt the user to enter 0 to convert from U.S. dollars to Chinese RMB and 1 to convert 
 * from Chinese RMB to U.S. dollars. 
 * Prompt the user to enter the amount in U.S. dollars or Chinese RMB to convert it to Chinese RMB or U.S. dollars, respectively.
 *
 * Here are the sample runs:
 * Enter the exchange rate from dollars to RMB: 6.81
 * Enter 0 to convert dollars to RMB and 1 vice versa: 0
 * Enter the dollar amount: 100
 * $100.0 is 681.0 yuan
 * 
 * Enter the exchange rate from dollars to RMB: 6.81
 * Enter 0 to convert dollars to RMB and 1 vice versa: 1
 * Enter the RMB amount: 10000
 * 10000.0 yuan is $1468.43
 * 
 * Enter the exchange rate from dollars to RMB: 6.81
 * Enter 0 to convert dollars to RMB and 1 vice versa: 5
 * CIncorrect input
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_31 
{
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter the exchange rate from dollars to RMB: ");
		double exchangeRate = input.nextDouble();
		System.out.print("Enter 0 to convert dollars to RMB and 1 vice versa: ");
		int choice = input.nextInt();

		double amount = 0.0;
		double convertedAmount = 0.0;
		
		// Calculate the conversion
		if (choice == 0)
		{
			System.out.print("Enter the dollar amount: ");
			amount = input.nextDouble();
			convertedAmount = exchangeRate * amount;
			String value = String.format("%.2f", convertedAmount);
			System.out.print("$" + amount + " is " + value + " yuan");
		}
		else if (choice == 1)
		{
			System.out.print("Enter the RMB amount: ");
			amount = input.nextDouble();
			convertedAmount = amount / exchangeRate;
			System.out.printf(amount + " yuan is $%.2f", convertedAmount);
		}
		else
		{
			System.out.println("Incorrect input.");
			System.exit(0);
		}
			
	}

}
