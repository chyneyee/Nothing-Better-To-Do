/**
 * @author mychin
 * Exercise01_02.java 
 * 14 Oct 2022 4:41:14 pm
 */
package chapter01;

public class Exercise01_02 
{
	public static void main(String[] args) 
	{
		// Display five messages
		System.out.println("I love Java");
		System.out.println("I love Java");
		System.out.println("I love Java");
		System.out.println("I love Java");
		System.out.println("I love Java");

		// Cheating method
		System.out.println("\nCheating method");
		int i=1;
		do
		{
			System.out.println("I love Java");
			i++;
		}while (i<=5);
	}
}



/**
 * Output
 * I love Java
 * I love Java
 * I love Java
 * I love Java
 * I love Java
 * 
 * Cheating method
 * I love Java
 * I love Java
 * I love Java
 * I love Java
 * I love Java
 */
