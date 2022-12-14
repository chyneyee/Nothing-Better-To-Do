/**
 * @author mychin
 * Exercise03_08.java 
 * 14 Dec 2022 12:34:38 pm
 * (Sort three integers) Write a program that prompts the user to enter three integers and display the integers
 * in non-decreasing order.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_08 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter three integers: ");
		int number1 = input.nextInt();
		int number2 = input.nextInt();
		int number3 = input.nextInt();
		
		int temp = 0;
		if (number1 > number2)
		{
			temp = number1;
			number1 = number2;
			number2 = temp;
		}
		if (number1 > number3)
		{
			temp = number1;
			number1 = number3;
			number3 = temp;
		}
		if (number2 > number3)
		{
			temp = number2;
			number2 = number3;
			number3 = temp;
		}
		
		// Display the result
		System.out.println(number1 + ", " + number2 + ", " +number3);
	}

}
