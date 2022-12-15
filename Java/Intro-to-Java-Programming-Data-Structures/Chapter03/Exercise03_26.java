/**
 * @author mychin
 * Exercise03_26.java 
 * 15 Dec 2022 3:14:02 pm
 * (Use the &&, ||, and ^ operators) Write a program that prompts the user to enter an integer and 
 * determines whether it is divisible by 4 and 5, whether it is divisible by 4 or 5, 
 * and whether it is divisible by 4 or 5, but not both. 
 * Here is a sample run of this program:
 *
 * Enter an integer: 10
 * Is 10 divisible by 4 and 5? false
 * Is 10 divisible by 4 or 5? true
 * Is 10 divisible by 4 or 5, but not both? true
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_26 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter an integer: ");
		int num = input.nextInt();
		
		System.out.println("Is " + num + " divisible by 4 and 5? ");
		if (num % 4 == 0 && num % 5 == 0)
		{
			System.out.println("true");
		}
		else
		{
			System.out.println("false");
		}
		
		System.out.println("Is " + num + " divisible by 4 or 5? ");
		if (num % 4 == 0 || num % 5 == 0)
		{
			System.out.println("true");
		}
		else
		{
			System.out.println("false");
		}
		
		System.out.println("Is " + num + " divisible by 4 or 5, but not both? ");
		if ((num % 4 == 0 || num % 5 == 0) ^ (num % 4 == 0 && num % 5 == 0))
		{
			System.out.println("true");
		}
		else
		{
			System.out.println("false");
		}
			
	}

}
