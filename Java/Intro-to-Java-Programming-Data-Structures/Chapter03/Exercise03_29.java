/**
 * @author mychin
 * Exercise03_29.java 
 * 15 Dec 2022 4:23:51 pm
 * (Geometry: two circles) Write a program that prompts the user to enter the center coordinates and 
 * radius of two circles and determines whether the second circle is inside the first or overlaps with the first, 
 * as shown in Figure 3.10.
 * (Hint: circle2 is inside circle1 if the distance between the two centers  <= r1 - r2
 * and circle2 overlaps circle1 if the distance between the two centers <= r1 + r2.
 * Test your program to cover all cases.)
 * 
 * Here are the sample runs:
 * Enter circle1's center x-, y-coordinates, and radius: 0.5 5.1 13
 * Enter circle2's center x-, y-coordinates, and radius: 1 1.7 4.5
 * circle2 is inside circle1
 * 
 * Enter circle1’s center x-, y-coordinates, and radius: 3.4 5.7 5.5
 * Enter circle2’s center x-, y-coordinates, and radius: 6.7 3.5 3
 * circle2 overlaps circle1
 *
 * Enter circle1’s center x-, y-coordinates, and radius: 3.4 5.5 1
 * Enter circle2’s center x-, y-coordinates, and radius: 5.5 7.2 1
 * circle2 does not overlap circle1
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_29 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts input for two circle's coordinates and radius
		System.out.print("Enter circle1's center x-, y-coordinates, and radius: ");
		double cx1 = input.nextDouble();
		double cy1 = input.nextDouble();
		double cr1 = input.nextDouble();
		
		System.out.print("Enter circle2's center x-, y-coordinates, and radius: ");
		double cx2 = input.nextDouble();
		double cy2 = input.nextDouble();
		double cr2 = input.nextDouble();
		
		// Calculate the distance between two centers and determines whether circle2 is inside circle1 or not
		double distanceBetweenCenters = Math.sqrt((Math.pow(cx2 - cx1,2)) + (Math.pow(cy2 - cy1, 2)));
		
		if (distanceBetweenCenters <= (cr1 - cr2))
		{
			System.out.print("circle2 is inside circle1");
		}
		else if (distanceBetweenCenters <= (cr1 + cr2))
		{
			System.out.print("circle2 overlaps circle1");
		}
		else
		{
			System.out.print("circle2 does not overlap circle1");
		}

	}

}
