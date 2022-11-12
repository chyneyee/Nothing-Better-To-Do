/**
 * @author mychin
 * Exercise02_07.java 
 * 12 Nov 2022 12:39:06 pm
 * 
 * (Find the number of years) Write a program that prompts the user to enter the minute (e.g., 1 billion), and
 * displays the maximum number of years and remaining days for the minutes.
 * For simplicity, assume that a year has 365 days. 
 * 
 * Here is a sample run:
 * Enter the number of minutes: 1000000000
 * 1000000000 minutes is approximately 1902 years and 214 days
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_07 
{
	
	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the number of minutes: ");
		long minutes = input.nextLong();
		
		// Calculate the result	
		long year = minutes / (365 * 24 * 60);	// divide by the total number of minutes in a year
		long remainderYear = minutes % (60 * 24 * 365); // find the remainder not into the year
		long days = remainderYear / (60 * 24); // divide by number of minutes in a day to find the numbers of days
		
		// Display the result
		System.out.println(minutes + " minutes is approximately "+year+ " years and " +days+ " days");

	}

}
