/**
 * @author mychin
 * Exercise02_11.java 
 * 12 Nov 2022 6:48:55 pm
 * 
 * (Population projection) Rewrite Programming Exercise 1.11 to prompt the user to enter the number of years 
 * and display the population after the number of years.
 * Use the hint in Programming Exercise 1.11 for this program.
 * 
 * Here is a sample run of the program:
 * Enter the number of years: 5
 * The population in 5 years is 3259332969
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_11 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the number of years: ");
		int numOfYears = input.nextInt();
		
		// Calculate results
		// One birth every 7 seconds;
		int b = 7;
		
		// One death every 13 seconds;
		int d = 13;
		
		// One new immigrant every 45 seconds;
		int i = 45;
		
		// Current population
		int currentPopulation = 312032486;
		
		// Number of days in one year
		int days = 365;
		
		// Number of seconds in one year
		int n = 86400 * 365;
		
		// Population in one year
		int calPopulation = (n / 7) + (n / 45) - (n / 13);
		
		// Total population in five years
		int totalPopulation = currentPopulation  + (calPopulation * numOfYears);

		// Display results
		System.out.print("The population in " +numOfYears+ " years is "+totalPopulation);

	}

}
