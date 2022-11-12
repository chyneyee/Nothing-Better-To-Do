/**
 * @author mychin
 * Exercise02_04.java 
 * 12 Nov 2022 11:50:51 am
 * 
 * (Convert square metres into ping) Write a program that converts square metre into ping.
 * The program prompts the user to enter a number in square, metre, converts it to ping, and displays the result.
 * One square metre is 0.3025 ping.
 * 
 * Here is a sample run:
 * Enter a number in square metres: 50
 * 50.0 square metres is 15.125 pings
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_04 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter a number in square metres: ");
		double squareMetres = input.nextDouble();
		
		// Calculate conversion square metres into ping
		double pings = squareMetres * 0.3025;
		
		// Display results
		System.out.println(squareMetres+ " square metres is " +pings+ " pings");

	}

}
