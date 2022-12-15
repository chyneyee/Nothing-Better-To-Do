/**
 * @author mychin
 * Exercise03_19.java 
 * 15 Dec 2022 11:57:09 am
 * (Compute the perimeter of a triangle) Write a program that reads two edges for a triangle and 
 * computes the perimeter if the input is valid. Otherwise, display that the input is invalid. 
 * The input is valid if both edges are of different lengths.
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_19 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts for input from user
		System.out.print("Enter two edges for a triangle: ");
		double s1 = input.nextDouble();
		double s2 = input.nextDouble();
		
		double sum = s1 + s2;
		double s3 = Math.random() * sum;
		
		double perimeter = s1 + s2 + s3;
		
		if ((s1 != s2))
		{
			System.out.printf("The perimeter of a triangle is %.2f\n", perimeter);
		}
		else
		{
			System.out.println("The input is invalid.");
		}

	}

}

/* Note: The question is unclear, stating two edges but triangle requires three edges. The third edge is randomly generated. */
