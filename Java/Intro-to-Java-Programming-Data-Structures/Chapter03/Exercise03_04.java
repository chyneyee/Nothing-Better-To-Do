/**
 * @author mychin
 * Exercise03_04.java 
 * 14 Dec 2022 10:46:38 am
 * (Random Colour) Write a program that randomly generates an integer between 1 and 7 and displays the name of a colour
 * in the rainbow - violet, indigo, blue, green, yellow, orange, and red - for numbers 1, 2, 3, .... 7 accordingly.
 */
package chapter03;

public class Exercise03_04 
{

	public static void main(String[] args) 
	{
		// Generates random number
		int number = (int)(Math.random() * 6) + 1;
		
		// Assign number to colour name
		switch(number) 
		{
		case 1: System.out.println("The colour in the rainbow is violet");
				break;
		case 2: System.out.println("The colour in the rainbow is indigo");
				break;
		case 3: System.out.println("The colour in the rainbow is blue");
				break;
		case 4: System.out.println("The colour in the rainbow is green");
				break;
		case 5: System.out.println("The colour in the rainbow is yellow");
				break;
		case 6: System.out.println("The colour in the rainbow is orange");
				break;
		case 7: System.out.println("The colour in the rainbow is red");
				break;
		}
	}
}
