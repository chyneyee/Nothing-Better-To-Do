/**
 * @author mychin
 * Exercise03_14.java 
 * 14 Dec 2022 5:57:14 pm
 * (Game: heads or tails) Write a program that lets the user guess whether the flip of a coin results in heads or tails. 
 * The program randomly generates an integer 0 or 1, which represents head or tail. 
 * The program prompts the user to enter a guess and reports whether the guess is correct or incorrect.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_14 
{

	public static void main(String[] args) 
	{
		// Generate random number for the coin flip
		int flipCoin = (int)(Math.random()* 2);

		// Prompts for user to guess the result of the coin flip
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your guess (0 - head, 1 - tail): ");
		int guess = input.nextInt();
		
		System.out.println(((guess == flipCoin) ? "Correct" : "Incorrect") + " guess."); 

	}

}
