/**
 * @author mychin
 * Exercise03_33.java 
 * 16 Dec 2022 11:23:02 am
 * (Financial: compare costs) Suppose you shop for rice in two different packages. You would like to write a program 
 * to compare the cost. The program prompts the user to enter the weight and price of each package and 
 * displays the one with the better price.
 *
 * Here is a sample run:
 * Enter weight and price for package 1: 50 24.59
 * Enter weight and price for package 2: 25 11.99
 * Package 2 has a better price.
 * 
 * Enter weight and price for package 1: 50 25
 * Enter weight and price for package 2: 25 12.5
 * Two packages have the same price.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_33 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for the input for the weight and price of the package
		System.out.print("Enter weight and price for package 1: ");
		double w1 = input.nextDouble();
		double p1 = input.nextDouble();
		System.out.print("Enter weight and price for package 2: ");
		double w2 = input.nextDouble();
		double p2 = input.nextDouble();
		
		// Calculate and compare the prices for both packages
		double firstPrice = p1/ w1;
		double secondPrice = p2 / w2;
		
		if (firstPrice < secondPrice)
		{
			System.out.print("Package 1 has a better price.");
		}
		else if (firstPrice > secondPrice)
		{
			System.out.print("Package 2 has a better price.");
		}
		else if (firstPrice == secondPrice)
		{
			System.out.print("Two packages have the same price.");
		}

	}

}
