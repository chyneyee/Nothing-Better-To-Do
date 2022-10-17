/**
 * @author mychin
 * Exercise01_10.java 
 * 17 Oct 2022 1:23:37 pm
 */
package chapter01;

public class Exercise01_10 
{

	public static void main(String[] args) 
	{
		double km = 15.0;
		double time = 50 + 30/60;	// convert seconds to minutes
		double d = km / time;
		double result = d * 60 / 1.6;
		System.out.println("Average speed in miles: " +result);
	}
}



/**
 * Output
 * Average speed in miles: 11.25
 */
