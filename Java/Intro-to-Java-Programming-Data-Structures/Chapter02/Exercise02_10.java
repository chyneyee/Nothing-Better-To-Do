package chapter02;
import java.util.Scanner;

/**
 * @author mychin
 * Exercise02_10.java 
 * 12 Nov 2022 5:10:51 pm
 * 
 * (Science: calculating energy) Write a program that calculates the energy needed to heat water from an initial
 * temperature to a final temperature. Your program should prompt the user to enter the amount of water in kilograms
 * and the initial and final temperatures of the water. The formula to compute the energy is
 * 			Q = M * (finalTemperature - initialTemperature) * 4184
 * where M is the weight of water in kilograms, initial and final temperatures are in degree Celsius, and energy Q
 * is measured in joules. 
 * 
 * Here is a sample run:
 * Enter the amount of water in kilograms: 55.5
 * Enter the initial temperature: 3.5
 * Enter the final temperature: 10.5
 * The energy needed is 1625484.0
 */


public class Exercise02_10 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the amount of water in kilograms: ");
		double M = input.nextDouble();
		System.out.print("Enter the initial temperature: ");
		double initialTemp = input.nextDouble();
		System.out.print("Enter the final temperature: ");
		double finalTemp = input.nextDouble();
		
		// Calculate results
		double Q = M * (finalTemp - initialTemp) * 4184;
		
		// Display results
		System.out.print("The energy needed is "+Q);
		
	}

}
