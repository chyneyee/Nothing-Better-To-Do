/**
 * @author mychin
 * Exercise03_01.java 
 * 12 Dec 2022 3:57:55 pm
 * 
 * (Algebra: solve quadratic equations) The two roots of a quadratic equation
 * ax2 + bx + c = 0 can be obtained using the following formula:
 * r1 = -b + 2b2 - 4ac / 2a
 * and r2 = -b - 2b2 - 4ac / 2a
 * b2 - 4ac is called the discriminant of the quadratic equation. If it is positive, the
 * equation has two real roots. If it is zero, the equation has one root. If it is negative,
 * the equation has no real roots.
 * Write a program that prompts the user to enter values for a, b, and c and displays
 * the result based on the discriminant. If the discriminant is positive, display two
 * roots. If the discriminant is 0, display one root. Otherwise, display "The equation
 * has no real roots".
 * Note that you can use Math.pow(x, 0.5) to compute SQRT(x). Here are some
 * sample runs.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_01 
{

	public static void main(String[] args) 
	{
		// Declare variables
		double a, b, c = 0.0;
		
		// Prompts the user for input
		Scanner input = new Scanner(System.in);
		
		System.out.print("Enter the value for a, b, c: ");
		a = input.nextDouble();
		b = input.nextDouble();
		c = input.nextDouble();
		
		// Calculate the discriminant and roots
		double discriminant = b * b - (4 * a * c);
		double r1 = (-b + (Math.pow(discriminant,0.5))) / (2 * a);
		double r2 = (-b - (Math.pow(discriminant,0.5))) / (2 * a);
		
		// Display the result based on the discriminant
		if (discriminant > 0)
		{
			System.out.println("The equation has two roots "+r1+" and "+r2);
			
		}
		else if (discriminant == 0)
		{
			System.out.println("The equation has one root "+r2);

		}
		else
		{
			System.out.println("The equation has no real roots");
			
		}
	}
}
