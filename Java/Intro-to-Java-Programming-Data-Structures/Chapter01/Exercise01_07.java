/**
 * @author mychin
 * Exercise01_07.java 
 * 17 Oct 2022 12:54:14 pm
 */
package chapter01;

public class Exercise01_07 
{

	public static void main(String[] args) 
	{
		double p1 = (1.0 - (1.0 / 3.0) + (1.0 / 5.0) - (1.0 / 7.0) + (1.0 / 9.0) - (1.0 / 11.0));
		double result1 = 4 * p1;
		double result2 = 4 * (p1 + 1.0 / 13.0);
		System.out.println("Result 1 = "+result1);
		System.out.println("Result 2 = "+result2);
	}

}



/**
 * Output
 * Result 1 = 2.9760461760461765
 * Result 2 = 3.2837384837384844
 */