/**
 * @author mychin
 * Exercise03_20.java 
 * 15 Dec 2022 12:25:14 pm
 * (Science: wind-chill temperature) Programming Exercise 2.17 gives a formula to compute the wind-chill temperature. 
 * The formula is valid for temperatures in the range between −58ºF and 41ºF and wind speed greater than or equal to 2.
 * Write a program that prompts the user to enter a temperature and a wind speed. 
 * The program displays the wind-chill temperature if the input is valid; 
 * otherwise, it displays a message indicating whether the temperature and/or wind speed is invalid.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_20 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter a temperature: ");
		double fahrenheit = input.nextDouble();
		System.out.print("Enter a wind speed: ");
		double speed = input.nextDouble();
		
		// Check invalid fahreneheit or speed
		if ((fahrenheit < -58) || (fahrenheit > 41))
		{
			System.out.print("Invalid temperature range. The temperature must be in the range between −58ºF and 41ºF.");
		}
		else if (speed < 2)
		{
			System.out.print("Invalid wind speed. The wind speed must be greater than or equal to 2.");
		}
		else
		{
			// Calculate the wind chill temperature
			double windChillTemp = 35.74 + (0.6215 * fahrenheit) - (35.75 * (Math.pow(speed, 0.16))) + 0.4275 * fahrenheit * (Math.pow(speed, 0.16));
			
			// Display the result
			System.out.print("The wind chill index is "+windChillTemp);
		}


	}

}
