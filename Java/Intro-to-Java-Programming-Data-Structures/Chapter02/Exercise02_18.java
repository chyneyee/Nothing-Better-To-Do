/**
 * @author mychin
 * Exercise02_18.java 
 * 13 Nov 2022 1:40:14 pm
 * 
 * (Print a table) Write a program that displays the following table. Calculate the middle point of two points.
 * 	a 		  b 		Middle Point
 * (0, 0) 	(2, 1) 		(1.0, 0.5)
 * (1, 4)	(4, 2) 		(2.5, 3.0)
 * (2, 7) 	(6, 3) 		(4.0, 5.0)
 * (3, 9) 	(10, 5) 	(6.5, 7.0)
 * (4, 11) 	(12, 7)		(8.0, 9.0)
 */

package chapter02;

public class Exercise02_18 
{

	public static void main(String[] args) 
	{
		// Initialise variables
		float a1= 0, a2 = 0;
		float b1= 0, b2 = 0;

		// Print the table heading
		System.out.println("a \t\t b \t\t Middle Point");
		
		// Increase the values
		b1 = 2;
		b2++;
		
		// Print the first line
		System.out.println("("+(int)a1+", "+(int)a2+") \t\t ("+(int)b1+", "+(int)b2+") \t ("+((+a1+ + +b1) / 2) +", "+((+a2+ + +b2) / 2) +")");
		
		a1++;
		a2 = +4;
		b1 = +4;
		b2++;
		System.out.println("("+(int)a1+", "+(int)a2+") \t\t ("+(int)b1+", "+(int)b2+") \t ("+((+a1+ + +b1) / 2) +", "+((+a2+ + +b2) / 2) +")");
		
		a1++;
		a2 = 7;
		b1 = 6;
		b2++;
		System.out.println("("+(int)a1+", "+(int)a2+") \t\t ("+(int)b1+", "+(int)b2+") \t ("+((+a1+ + +b1) / 2) +", "+((+a2+ + +b2) / 2) +")");
		
		a1++;
		a2 = 9;
		b1 = 10;
		b2 = 5;
		System.out.println("("+(int)a1+", "+(int)a2+") \t\t ("+(int)b1+", "+(int)b2+") \t ("+((+a1+ + +b1) / 2) +", "+((+a2+ + +b2) / 2) +")");
		
		a1++;
		a2 = 11;
		b1 = 12;
		b2 = 7;
		System.out.println("("+(int)a1+", "+(int)a2+") \t ("+(int)b1+", "+(int)b2+") \t ("+((+a1+ + +b1) / 2) +", "+((+a2+ + +b2) / 2) +")");
		

	}

}
