/**
 * @author mychin
 * Exercise03_18.java 
 * 15 Dec 2022 11:34:55 am
 * (Cost of shipping) A shipping company uses the following function to calculate the cost (in dollars) 
 * of shipping based on the weight of the package (in pounds).			
							 2.5, if 0 < w < = 2
			     c(w) =  	 4.5, if 2 < w < = 4
							 7.5, if 4 < w < = 10
							 10.5, if 10 < w < = 20
 * Write a program that prompts the user to enter the weight of the package and display the shipping cost. 
 * If the weight is greater than 50, display a message “the package cannot be shipped.”
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_18 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);

		// Prompts for input from user
		System.out.print("Please enter the weight of the package: ");
		double weight = input.nextDouble();

		// Calculate the shipping cost
		double cost = 0.0;
		if (weight > 0 && weight <= 2) 
		{
			cost = 2.5;
		} 
		else if (weight > 2 && weight <= 4) 
		{
			cost = 4.5;
		} 
		else if (weight > 4 && weight <= 10) 
		{
			cost = 7.5;
		} 
		else if (weight > 10 && weight <= 20) 
		{
			cost = 10.5;
		} 
		else if (weight > 50) 
		{
			System.out.println("The package cannot be shipped.");
			System.exit(0);
		}

		System.out.print("The shipping cost for your package is $" + cost);
	}

}
