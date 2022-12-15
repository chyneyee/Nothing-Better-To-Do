/**
 * @author mychin
 * Exercise03_27.java 
 * 15 Dec 2022 3:31:39 pm
 * (Geometry: points in triangle?) Suppose a right triangle is placed in a plane as shown below. 
 * The right-angle point is placed at (0, 0), and the other two points are placed at (200, 0), and (0, 100). 
 * Write a program that prompts the user to enter a point with x- and y-coordinates and 
 * determines whether the point is inside the triangle. 
 * 
 * Here are the sample runs:
 * Enter a point’s x- and y-coordinates: 100.5 25.5
 * The point is in the triangle
 *
 * Enter a point’s x- and y-coordinates: 100.5 50.5
 * The point is not in the triangle
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_27 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		System.out.print("Enter a point's x- and y-coordinates: ");
		double x = input.nextDouble();
		double y = input.nextDouble();
		
		// right-angle point
		double x1 = 0;
		double y1= 0;
		
		// The other two points of the triangle
		double x2 = 200;
		double y2 = 0;
		double x3 = 0;
		double y3 = 100;
		
	// Calculate the area of triangle
        double A = Math.abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2);

        // Calculate area for the entered point and BC
        double A1 = Math.abs((x * (y2 - y3) + x2 * (y3 - y) + x3 * (y - y2)) / 2);

        // Calculate area for the entered point and AC
        double A2 = Math.abs((x1 * (y - y3) + x * (y3 - y1) + x3 * (y1 - y)) / 2);

        // Calculate area for the entered point and AB
        double A3 = Math.abs((x1 * (y2 - y) + x2 * (y - y1) + x * (y1 - y2)) / 2);
		
        if(A1 + A2 + A3 == A)
        {
            System.out.println("The point is in the triangle");
        }
        else
        {
            System.out.println("The point is not in the triangle");
        }

	}

}
