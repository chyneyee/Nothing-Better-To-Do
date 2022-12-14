/**
 * @author mychin
 * Exercise03_09.java 
 * 14 Dec 2022 12:46:58 pm
 * (Business: check ISBN-10) An ISBN-10 (International Standard Book Number) consists of 10 digits: d1d2d3d4d5d6d7d8d9d10. 
 * The last digit, d10, is a checksum, which is calculated from the other 9 digits using the following formula:
 * (d1 * 1 + d2 * 2 + d3 * 3 + d4 * 4 + d5 * 5 + d6 * 6 + d7 * 7 + d8 * 8 + d9 * 9) % 11
 * 
 * If the checksum is 10, the last digit is denoted as X according to the ISBN-10 convention. 
 * Write a program that prompts the user to enter the first 9 digits and displays the 10-digit ISBN 
 * (including leading zeros). 
 * Your program should read the input as an integer. 
 * 
 * Here are sample runs:
 * Enter the first 9 digits of an ISBN as integer: 013601267
 * The ISBN-10 number is 0136012671
 * 
 * Enter the first 9 digits of an ISBN as integer: 013031997
 * The ISBN-10 number is 013031997X
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_09 
{
	
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter the first 9 digits of an ISBN as integer: ");
		int isbn = input.nextInt();
		
		// Calculate the checksum
		int firstDigit = isbn / 100000000;
		int remainingDigits = isbn % 100000000;
		int secondDigit = remainingDigits / 10000000;
		remainingDigits = isbn % 10000000;
		int thirdDigit = remainingDigits / 1000000;
		remainingDigits = isbn % 1000000;
		int fourthDigit = remainingDigits / 100000;
		remainingDigits = isbn % 100000;
		int fifthDigit = remainingDigits / 10000;
		remainingDigits = isbn % 10000;
		int sixthDigit = remainingDigits / 1000;
		remainingDigits = isbn % 1000;
		int seventhDigit = remainingDigits / 100;
		remainingDigits = isbn % 100;
		int eighthDigit = remainingDigits / 10;
		remainingDigits = isbn % 10;
		int ninthDigit = remainingDigits;
		
		int checksum = (firstDigit * 1 + secondDigit * 2 + thirdDigit * 3 + fourthDigit * 4 + fifthDigit * 5 + 
				sixthDigit * 6 + seventhDigit * 7 + eighthDigit * 8 + ninthDigit * 9) % 11;
		
		// Display the result
		System.out.print("The ISBN-10 number is " + firstDigit + secondDigit + thirdDigit + fourthDigit + fifthDigit + 
				sixthDigit + seventhDigit + eighthDigit + ninthDigit);
		
		if (checksum == 10)
		{
			System.out.print("X");
		}
		else
		{
			System.out.println(checksum);
		}

	}

}
