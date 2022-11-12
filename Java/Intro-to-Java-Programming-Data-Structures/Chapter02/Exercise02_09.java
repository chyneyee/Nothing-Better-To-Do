/**
 * @author mychin
 * Exercise02_09.java 
 * 12 Nov 2022 1:47:07 pm
 * 
 * (Physics: Motion) Newton's equation of motion for distance covered given initial velocity, constant acceleration,
 * and total time is described by the expression
 * 			s = (u * t) + 0.5 * (a * t^2)
 * 
 * Write a program that prompts the user to enter the initial velocity u in metres / second, time span t in seconds
 * and acceleration a in meters / seconds2, and returns the distance covered. 
 * 
 * Here is a sample run
 * Enter u, t, and a: 3.5 4 6.5
 * The distance covered is 14.0
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_09 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter u, t, and a: ");
		double u = input.nextDouble();
		double t = input.nextDouble();
		double a = input.nextDouble();
		
		// Calculate the result	
		double s = (u * t) + (a * t * t) / 2;
		
		// Display results
		System.out.println("The distance covered is "+s);
		

	}

}
