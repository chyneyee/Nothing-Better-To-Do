/**
 * @author mychin
 * Exercise02_19.java 
 * 13 Nov 2022 2:39:20 pm
 * 
 * (Geometry: area of a triangle) Write a program that prompts the user to enter three points, (x1, y1), (x2, y2), and (x3, y3),
 * of a triangle then displays its area.
 * 
 * The formula for computing the area of a triangle is
 * 			s = (side1 + side2 + side3) / 2;
 * 		 area = square root of s(s - side1)(s - side2)(s - side3)
 * 
 * Here is a sample run:
 * Enter the coordinates of three points separated by spaces like x1 y1 x2 y2 x3 y3: 1.5 -3.4 4.6 5 9.5 -3.4
 * The area of the triangle is 33.6
 */

package chapter02;

import java.util.Scanner;

public class Exercise02_19 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the coordinates of three points separated by spaces like x1 y1 x2 y2 x3 y3: ");
		double x1 = input.nextDouble();
		double y1 = input.nextDouble();
		double x2 = input.nextDouble();
		double y2 = input.nextDouble();
		double x3 = input.nextDouble();
		double y3 = input.nextDouble();
		
		// Calculate the area
		double side1 = Math.sqrt(Math.pow(x3 - x2, 2) + Math.pow(y3 - y2, 2));
		double side2 = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
		double side3 = Math.sqrt(Math.pow(x1 - x3, 2) + Math.pow(y1 - y3, 2));
		double s = (side1 + side2 + side3) / 2;
		double area = Math.sqrt(s * ((s - side1) * (s - side2) * (s - side3)));
		
		// Display the result
		System.out.print("The area of the triangle is "+area);		

	}

}
