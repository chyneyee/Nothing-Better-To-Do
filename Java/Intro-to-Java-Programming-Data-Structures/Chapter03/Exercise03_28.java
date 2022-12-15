/**
 * @author mychin
 * Exercise03_28.java 
 * 15 Dec 2022 3:58:03 pm
 * (Geometry: two rectangles) Write a program that prompts the user to enter the center x-, y-coordinates, width, 
 * and height of two rectangles and determines whether the second rectangle is inside the first or 
 * overlaps with the first, as shown in Figure 3.9. Test your program to cover all cases.
 * 
 * Here are the sample runs:
 *
 * Enter r1’s center x-, y-coordinates, width, and height: 2.5 4 2.5 43
 * Enter r2’s center x-, y-coordinates, width, and height: 1.5 5 0.5 3
 * r2 is inside r1
 *
 * Enter r1’s center x-, y-coordinates, width, and height: 1 2 3 5.5
 * Enter r2’s center x-, y-coordinates, width, and height: 3 4 4.5 5
 * r2 overlaps r1
 *
 * Enter r1’s center x-, y-coordinates, width, and height: 1 2 3 3
 * Enter r2’s center x-, y-coordinates, width, and height: 40 45 3 2
 * r2 does not overlap r1
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_28 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user to enter the center x-, y-coordinates, width and height of two rectangles
		System.out.print("Enter r1's center x-, y-coordinates, width, and height: ");
		double x1 = input.nextDouble();
		double y1 = input.nextDouble();
		double w1 = input.nextDouble();
		double h1 = input.nextDouble();
		
		System.out.print("Enter r2's center x-, y-coordinates, width, and height: ");
		double x2 = input.nextDouble();
		double y2 = input.nextDouble();
		double w2 = input.nextDouble();
		double h2 = input.nextDouble();
		
		// Calculate whether two rectangles are overlapping or not
		if	((Math.pow(Math.pow(y2 - y1, 2), .05) + h2 / 2 <= h1 / 2) && 
				(Math.pow(Math.pow(x2 - x1, 2), .05) + w2 / 2 <= w1 / 2) &&
				(h1 / 2 + h2 / 2 <= h1) && (w1 / 2 + w2 / 2 <= w1))
		{
			System.out.print("r2 is inside r1");
		}
		else if ((x1 + w1 / 2 > x2 - w2) || (y1 + h1 / 2 > y2 - h2))
		{
			System.out.println("r2 overlaps r1");
		}
		else
		{
			System.out.print("r2 does not overlap r1");
		}		

	}

}
