/**
 * @author mychin
 * Exercise03_12.java 
 * 14 Dec 2022 2:12:35 pm
 * (Palindrome integer) Write a program that prompts the user to enter a three-digit integer and determines whether 
 * it is a palindrome integer. An integer is palindrome if it reads the same from right to left and from left to right. 
 * A negative integer is treated the same as a positive integer. Here are sample runs of this program:
 *
 * Enter a three-digit integer: 121
 * 121 is a palindrome
 *
 * Enter a three-digit integer: 123
 * 123 is not a palindrome
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_12 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter a three-digit integer: ");
		int number = input.nextInt();
		
		// Determines whether it's palindrome
		int num1 = number / 100;
		int num3 = number % 10; 
		
		if (num1 == num3)
		{
			System.out.println(number + " is a palindrome.");
		}
		else
		{
			System.out.println(number + " is not a palindrome.");
		}
	}

}
