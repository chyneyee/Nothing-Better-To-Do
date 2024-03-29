/**
 * @author mychin
 * Exercise03_05.java 
 * 14 Dec 2022 11:05:03 am
 * (Find future dates) Write a program that prompts the user to enter an integer for today's day of the week (Sunday is
 * 0, Monday is 1, ...., and Saturday is 6).
 * Also prompts the user to enter the number of days after today for a future day and display the future day of the 
 * week. 
 * Here is a sample run:
 * Enter today's day: 1
 * Enter the number of days elapsed since today: 3
 * Today is Monday and the future day is Thursday
 * 
 * Enter today's day: 0
 * Enter the number of days elapsed since today: 31
 * Today is Sunday and the future day is Wednesday
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_05 
{

	public static void main(String[] args) 
	{
		// Prompts input from user
		Scanner input = new Scanner(System.in);
		System.out.print("Enter today's day: ");
		int day = input.nextInt();
		System.out.print("Enter the number of days elapsed since today: ");
		int elapsedDay = input.nextInt();
		
		// Calculate future day
		int futureDay = (day + elapsedDay) % 7;
		
		System.out.print("Today is ");
		switch(day)
		{
		case 0: System.out.print("Sunday");
				break;
		case 1: System.out.print("Monday");
				break;
		case 2: System.out.print("Tuesday");
				break;
		case 3: System.out.print("Wednesday");
				break;
		case 4: System.out.print("Thursday");
				break;
		case 5: System.out.print("Friday");
				break;
		case 6: System.out.print("Saturday");
				break;
		}
		
		System.out.print(" and the future day is ");
		switch(futureDay)
		{
		case 0: System.out.print("Sunday");
				break;
		case 1: System.out.print("Monday");
				break;
		case 2: System.out.print("Tuesday");
				break;
		case 3: System.out.print("Wednesday");
				break;
		case 4: System.out.print("Thursday");
				break;
		case 5: System.out.print("Friday");
				break;
		case 6: System.out.print("Saturday");
				break;
		}
	}
}
