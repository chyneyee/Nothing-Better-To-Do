/**
 * @author mychin
 * Exercise02_16.java 
 * 13 Nov 2022 12:54:24 pm
 * 
 * (Geometry: area of a hexagon) Write a program that prompts the user to enter the side of a hexagon and displays its area.
 * The formula for computing the area of a hexagon is
 * 			Area = (3 square root of 3) / 2 * (s * s),
 * where s is the length of a side.
 * 
 * Here is a sample run:
 * Enter the length of the side: 5.5
 * The area of the hexagon is 78.5918
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_16 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the length of the side: ");
		double length = input.nextDouble();
		
		// Calculate the area of a hexagon
		double area = (3 * Math.sqrt(3)) / 2 * (length * length);
		
		// Display the result
		System.out.print("The area of the hexagon is "+area);
		
	}

}
