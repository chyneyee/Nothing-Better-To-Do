/**
 * @author mychin
 * Exercise03_15.java 
 * 15 Dec 2022 9:08:57 am
 * (Game: lottery) Revise Listing 3.8, Lottery.java, to generate a lottery of a three-digit integer. 
 * The program prompts the user to enter a three-digit integer and determines whether the user wins 
 * according to the following rules:
 * 1. If the user input matches the lottery number in the exact order, the award is $12,000.
 * 2. If all digits in the user input match all digits in the lottery number, the award is $5,000.
 * 3. If one digit in the user input matches a digit in the lottery number, the award is $2,000.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_15 
{

	public static void main(String[] args) 
	{
		// Generate a lottery number
		int lottery = (int)(Math.random() * 1000);
		
		// Prompt the user to enter a guess/
		Scanner input = new Scanner(System.in);
		System.out.print("Enter your lottery pick (three digits): ");
		int guess = input.nextInt();
		
		// Get digits from lottery
		int lotteryDigit1 = lottery / 100;
		//System.out.println("LotteryDigit1: "+lotteryDigit1);		// For debugging
		int remainingLottery = lottery % 100;
		//System.out.println("Remaining Lottery: "+remainingLottery);	// For debugging
		int lotteryDigit2 = remainingLottery / 10;
		//System.out.println("LotteryDigit2: "+lotteryDigit2);	// For debugging
		int lotteryDigit3 = remainingLottery % 10;
		//System.out.println("LotteryDigit3: "+lotteryDigit3);	// For debugging
		
		// Get digits from guess
		int guessDigit1 = guess / 100;
		//System.out.println("Guess Digit 1: "+guessDigit1);	// For debugging
		int remainingDigits = guess % 100;
		//System.out.println("Remaining Digits: "+remainingDigits);		// For debugging
		int guessDigit2 = remainingDigits / 10;
		//System.out.println("Guess Digit 2: "+guessDigit2);	// For debugging
		int guessDigit3 = remainingDigits % 10;
		//System.out.println("Guess Digit 3: "+guessDigit3);	// For debugging
		
		System.out.printf("The lottery number is %03d\n", lottery);
		
		// Check the guess
		if (guess == lottery)
			System.out.println("Exact match: you win $12,000");
		else if ((guessDigit1 == lotteryDigit1 && guessDigit2 == lotteryDigit3 && guessDigit3 == lotteryDigit2) ||
		(guessDigit1 == lotteryDigit2 && guessDigit2 == lotteryDigit1 && guessDigit3 == lotteryDigit3) ||
		(guessDigit1 == lotteryDigit2 && guessDigit2 == lotteryDigit3 && guessDigit3 == lotteryDigit1) ||
		(guessDigit1 == lotteryDigit3 && guessDigit2 == lotteryDigit1 && guessDigit3 == lotteryDigit2) ||
		(guessDigit1 == lotteryDigit3 && guessDigit2 == lotteryDigit2 && guessDigit3 == lotteryDigit1))
			System.out.println("Match all digits: you win $5000");
		else if (guessDigit1 == lotteryDigit1 || guessDigit1 == lotteryDigit2 || guessDigit1 == lotteryDigit3 ||
				guessDigit2 == lotteryDigit1 || guessDigit2 == lotteryDigit2 || guessDigit2 == lotteryDigit3 ||
				guessDigit3 == lotteryDigit1 || guessDigit3 == lotteryDigit2 || guessDigit3 == lotteryDigit3)
			System.out.println("Match one digit: you win $2,000");
		else
			System.out.println("Sorry, no match");
		
	}

}
