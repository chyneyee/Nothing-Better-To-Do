/**
 * @author mychin
 * Exercise01_04.java 
 * 17 Oct 2022 11:27:18 am
 */
package chapter01;

public class Exercise01_04 
{

	public static void main(String[] args) 
	{
		//Display the table
		System.out.println("a  a^2  a^3  a^4");
		int a=1;
		System.out.println(a +"  "+ (a*a) +"    "+ (a*a*a) +"     "+( a*a*a*a));
		a=2;
		System.out.println(a +"  "+ (a*a) +"    "+ (a*a*a) +"     "+ (a*a*a*a));
		a=3;
		System.out.println(a +"  "+ (a*a) +"    "+ (a*a*a) +"     "+ (a*a*a*a));
		a=4;
		System.out.println(a +"  "+ (a*a) +"    "+ (a*a*a) +"     "+ (a*a*a*a));

		System.out.println();
		System.out.println("Cheating method");
		
		int base = 1, power = 1;
		for(base = 1; base <= 4; base++)
		{
			
			Double result = Math.pow(base, power);
			int r = result.intValue();
			int r1 = base * r;
			int r2 = base * r1;
			int r3 = base * r2;
			System.out.println(base +"  "+ r1 +"  "+ r2 +"  "+ r3);
			
		} // end for for loop
	} // end main
} // end class



/**
 * Output
 * a  a^2  a^3  a^4
 * 1  1    1     1
 * 2  4    8     16
 * 3  9    27     81
 * 4  16    64     256
 * 
 * Cheating method
 * 1  1  1  1
 * 2  4  8  16
 * 3  9  27  81
 * 4  16  64  256
 */