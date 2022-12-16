/**
 * @author mychin
 * Exercise03_35.java 
 * 16 Dec 2022 12:04:15 pm
 * (Even or odd number) Write a program that prompts the user to enter an integer and displays whether the integer is an odd number or not.
 *
 * Here are the sample runs:
 * Enter an integer: 200
 * 200 is even number
 * 
 * Enter an integer: 211
 * 211 is odd number
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_35 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter an integer: ");
		int num = input.nextInt();
		
		// Determines whether the input is even or odd number
		if (num % 2 == 0)
		{
			System.out.print(num + " is even number");
		}
		else
		{
			System.out.print(num + " is odd number");
		}
		
	}

}
