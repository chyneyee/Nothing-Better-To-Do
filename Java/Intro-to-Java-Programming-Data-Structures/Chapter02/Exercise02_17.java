/**
 * @author mychin
 * Exercise02_17.java 
 * 13 Nov 2022 1:09:44 pm
 * 
 * (Science: wind-chill temperature) How cold is it outside? The temperature alone is not enough to provide the answer.
 * Other factors including wind speed, relative humidity, and sunshine play important roles in determining coldness outside.
 * In 2001, the National Weather Service (NWS) implemented the new wind-chill temperature to measure the coldness using
 * temperature and wind speed. The formula is
 * 				twc = 35.74 + 0.6215ta - 35.75v^0.16 + 0.4275tav^0.16
 * where ta is the outside temperature measured in degrees Fahrenheit, v is the speed measured in miles per hour, and
 * twc is the wind-chill temperature. The formula cannot be used for wind speeds below 2mph or temperatures below -58ºF or
 * above 41ºF.
 * 
 * Write a program that prompts the user to enter a temperature between -58 ºF and 41ºF and a wind speed greater 
 * than or equal to 2 and displays the wind-chill temperature. Use Math.pow(a, b) to compute v0.16.
 * 
 * Here is a sample run:
 * Enter the temperature in Fahrenheit between -58ºF or above 41ºF: 5.3
 * Enter the wind speed (>= 2) in miles per hour: 6
 * The wind chill index is -5.56707
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_17 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the temperature in Fahrenheit between -58ºF or above 41ºF: ");
		double fahrenheit = input.nextDouble();
		System.out.print("Enter the wind speed (>= 2) in miles per hour: ");
		double speed = input.nextDouble();
		
		// Calculate the wind chill temperature
		double windChillTemp = 35.74 + (0.6215 * fahrenheit) - (35.75 * (Math.pow(speed, 0.16))) + 0.4275 * fahrenheit * (Math.pow(speed, 0.16));
		
		// Display the result
		System.out.print("The wind chill index is "+windChillTemp);

	}

}
