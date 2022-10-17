/**
 * @author mychin
 * Exercise01_12.java 
 * 17 Oct 2022 3:39:02 pm
 */
package chapter01;

public class Exercise01_12 
{

	public static void main(String[] args) 
	{
		int miles = 24;
		
		// Convert time
		double time = 1 + (40 + 35.0 / 60) / 60;
		
		double avg = miles / time;
		
		double kph = avg * 1.6;
		
		System.out.println("Average speed in km is "+kph);
	}
}



/**
 * Output
 * Average speed in km is 22.90637945318973
 */