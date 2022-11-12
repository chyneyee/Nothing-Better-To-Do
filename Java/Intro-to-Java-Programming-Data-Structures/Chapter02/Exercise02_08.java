/**
 * @author mychin
 * Exercise02_08.java 
 * 12 Nov 2022 1:17:52 pm
 * 
 * (Current time) Listing 2.7, ShowCurrentTime.java, gives a program that displays the current time in GMT.
 * Revise the program so it prompts the user to enter the time zone offset to GMT and displays the time in the
 * specified time zone. 
 * 
 * Here is a sample run:
 * Enter the time zone offset to GMT: -5
 * The current time is 4:50:34
 */
package chapter02;

import java.util.Scanner;

public class Exercise02_08 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		// Prompts the user for input
		System.out.print("Enter the time zone offset to GMT: ");
		int timezoneOffset = input.nextInt();
		
		// Obtain the total milliseconds since midnight, Jan 1, 1970
		long totalMilliseconds = System.currentTimeMillis();
		
		// Obtain the total seconds since midnight, Jan 1, 1970
		long totalSeconds = totalMilliseconds / 1000;
		
		// Compute the current second in the minute in the hour
		long currentSecond = totalSeconds % 60;
		
		// Obtain the total minutes
		long totalMinutes = totalSeconds / 60;
		
		// Compute the current minute in the hour
		long currentMinute = totalMinutes % 60;
		
		// Obtain the total hours
		long totalHours = totalMinutes / 60;
		
		// Compute the current hour
		long currentHour = (totalHours + timezoneOffset) % 24;
		
		// Display results
		System.out.println("The current time is "+currentHour +":" +currentMinute +":" +currentSecond);
		
	}

}
