/**
 * @author mychin
 * Exercise03_34.java 
 * 16 Dec 2022 11:41:08 am
 * (Geometry: point on line segment) Exercise 3.32 shows how to test whether a point is on an unbounded line. 
 * Revise Exercise 3.32 to test whether a point is on a line segment. 
 * Write a program that prompts the user to enter the three points for p0, p1, and p2 and 
 * displays whether p2 is on the line segment from p0 to p1.
 *
 * Here are some sample runs:
 * Enter three points for p0, p1, and p2: 1 1 2.5 2.5 1.5 1.5
 * (1.5, 1.5) is on the line segment from (1.0, 1.0) to (2.5, 2.5)
 * 
 * Enter three points for p0, p1, and p2: 1 1 2 2 3.5 3.5
 * (3.5, 3.5) is not on the line segment from (1.0, 1.0) to (2.0, 2.0)
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_34 
{

	public static void main(String[] args) 
	{
	Scanner input = new Scanner(System.in);
		
		// Prompts for input for three points p0, p1, p2
		System.out.print("Enter three points for p0, p1, and p2: ");
		double p0x0 = input.nextDouble();
		double p0y0 = input.nextDouble();
		double p1x1 = input.nextDouble();
		double p1y1 = input.nextDouble();
		double p2x2 = input.nextDouble();
		double p2y2 = input.nextDouble();
		
		// Determines whether point p2 is on an unbounded line or not
		double position = (p1x1 - p0x0) * (p2y2 - p0y0) - (p2x2 - p0x0) * (p1y1 - p0y0);
		
		if ((p2x2 > p1x1) && (p2x2 < p0x0) || (p2x2 > p0x0) && (p2x2 < p1x1) && (position == 0))
			{
				System.out.print("("+ p2x2 + ", " + p2y2 + ") is on the line segment from (" + p0x0 + ", " + p0y0 +
					") to (" + p1x1 + ", " + p1y1 + ")");
			}
			else
			{
				System.out.print("("+ p2x2 + ", " + p2y2 + ") is not on the line segment from (" + p0x0 + ", " + p0y0 +
					") to (" + p1x1 + ", " + p1y1 + ")");
			}

	}

}
