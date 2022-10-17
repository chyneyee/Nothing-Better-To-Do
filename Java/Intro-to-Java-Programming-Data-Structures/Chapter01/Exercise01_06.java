/**
 * @author mychin
 * Exercise01_06.java 
 * 17 Oct 2022 12:45:01 pm
 */
package chapter01;

public class Exercise01_06 
{
	public static void main(String[] args) 
	{
		int cal = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10;
		System.out.println("Result: "+cal);

		System.out.println();
		System.out.println("Cheating method");
		int result=0;
		for(int i = 1; i <= 10; i++)
		{
			result=i+result;
			System.out.println(i+"  "+result);
		} // end for loop
		
	}

}



/**
 * Output
 * Result: 55
 * 
 * Cheating method
 * 1  1
 * 2  3
 * 3  6
 * 4  10
 * 5  15
 * 6  21
 * 7  28
 * 8  36
 * 9  45
 * 10  55
 */