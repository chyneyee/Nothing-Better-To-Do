/**
 * @author mychin
 * Exercise03_16.java 
 * 15 Dec 2022 10:55:51 am
 *  (Random point) Write a program that displays a random coordinate in a rectangle. 
 *  The rectangle is centered at (0, 0) with width 50 and height 150.
 */
package chapter03;

public class Exercise03_16 
{

	public static void main(String[] args) 
	{
		// Generate random width and height
		int width = (int)((Math.random() * (25 + 25)) - 50);
		int height = (int)((Math.random() * (75 + 75)) - 75);
		
		// Display the coordinate
		System.out.println("Random coordinate in a rectangle is (" + width + ", " + height + ")");

	}

}
