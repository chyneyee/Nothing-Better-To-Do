/**
 * @author mychin
 * Exercise03_02.java 
 * 14 Dec 2022 9:00:22 am
 * (Game: add three numbers) The program in Listing 3.1, AdditionQuiz.java, generates two integers and 
 * prompts the user to enter the sum of these two integers.
 * Revise the program to generate three single-digit integers and prompt the user to 
 * enter the sum of these three integers.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_02 
{

	public static void main(String[] args) 
	{
		// Generate three single-digit integers
		int number1 = (int)(Math.random() * 10);
		int number2 = (int)(Math.random() * 10);
		int number3 = (int)(Math.random() * 10);
		
		// Create a Scanner
		Scanner input = new Scanner(System.in);
		
		System.out.print("What is " + number1 + " * " + number2 + " * " + number3 + "? ");
		int answer = input.nextInt();
		
		System.out.println(number1 + " * " + number2 + " * " + number3 + " = " + answer + " is " 
		+ (number1 * number2 * number3 == answer));

	}

}
