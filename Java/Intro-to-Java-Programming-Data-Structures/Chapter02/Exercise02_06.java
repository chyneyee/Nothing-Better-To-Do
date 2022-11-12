/**
 * @author mychin
 * Exercise02_06.java 
 * 12 Nov 2022 12:22:25 pm
 * 
 * (Sum the digits in an integer) Write a program that reads an integer between 0 and 1000 and adds all the digits
 * in the integer. For example, if an integer is 932, the sum of all its digits is 14.
 * 
 * Hint: Use the % operator to extract digits, and use the / operator to remove the extracted digit. For instance,
 * 932 % 10 = 2 and 932 / 10 = 93.
 * 
 * Here is a sample run:
 * Enter a number between 0 and 1000: 999
 * The sum of the digits is 27
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_06 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter a number between 0 and 1000: ");
		int number = input.nextInt();
		
		// Calculate the results
		int firstNum = number / 100;
		int secondNum = (number / 10) % 10;
		int lastNum = number % 10;		
		int sum = firstNum + secondNum + lastNum;
		
		// Display the results
		System.out.println("The sum of the digits is "+sum);

	}

}
