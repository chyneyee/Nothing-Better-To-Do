/**
 * @author mychin
 * Exercise02_02.java 
 * 10 Nov 2022 3:55:43 pm
 * 
 * (Compute the volume of a triangle) Write a program that reads in the length of sides of an equilateral triangle
 * and computes the area and volume using the following formulas:
 * 			area = (√ 3 /4)* length of sides * length of sides
 * 			volume = area x length
 * 
 * Here is a sample run:
 * Enter length of the sides and height of the equilateral triangle: 3.5
 * The area is 3.89
 * The volume of the Triangular prism is 19.48
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_02 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompt the user for input
		System.out.print("Enter length of the sides and height of the equilateral triangle: ");
		double lengthOfSides = input.nextDouble();
		double height = input.nextDouble();
		
		// Calculate the area and volume of an equilateral triangle
		double area = (Math.sqrt(3) / 4) * (lengthOfSides * lengthOfSides);
		double volume = area * height;
		
		// Display results
		System.out.println("The area is "+area);
		System.out.println("The volume of the Triangular prism is "+volume);
	}

}
