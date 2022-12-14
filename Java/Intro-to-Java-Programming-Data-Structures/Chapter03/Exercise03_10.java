/**
 * @author mychin
 * Exercise03_10.java 
 * 14 Dec 2022 1:24:33 pm
 * (Game: multiplication quiz) Listing 3.3, Subtraction Quiz.java, randomly generates a subtraction question.
 * Revise the program to randomly generate a multiplication question with two integers less than 1000.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_10 
{

	public static void main(String[] args) 
	{
		// Generate two integers less than 1000
		int number1 = (int)(Math.random() * 1000);
		int number2 = (int)(Math.random() * 1000);
		
		int result = number1 * number2;
		
		Scanner input = new Scanner(System.in);
		System.out.print("What is " + number1 + " * " + number2 + "? ");
		int answer = input.nextInt();
		
		if (answer == result)
		{
			System.out.println("You are correct!");
		}
		else
		{
			System.out.println("Your answer is wrong.");
			System.out.println(number1 + " * " + number2 + " should be " + result);
		}

	}

}
