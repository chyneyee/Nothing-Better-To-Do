/**
 * @author mychin
 * Exercise02_23.java 
 * 13 Nov 2022 4:40:27 pm
 * 
 * (Cost of driving) Write a program that prompts the user to enter the distance to drive, the fuel efficiency of the car
 * in miles per gallon, and the price per gallon then displays the cost of the trip.
 * 
 * Here is a sample run:
 * Enter the driving distance: 900.5
 * Enter miles per gallon: 25.5
 * Enter price per gallon: 3.55
 * The cost of driving is $125.36
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_23 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the driving distance: ");
		double distance = input.nextDouble();
		System.out.print("Enter miles per gallon: ");
		double miles = input.nextDouble();
		System.out.print("Enter price per gallon: ");
		double price = input.nextDouble();
		
		// Calculate the cost of driving
		double cost = (distance / miles) * price;
		
		// Display the result
		System.out.print("The cost of driving is $" +(int)(cost * 100)/ 100.0);

	}

}
