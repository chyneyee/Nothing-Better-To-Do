/**
 * @author mychin
 * Exercise01_11.java 
 * 17 Oct 2022 3:10:36 pm
 */
package chapter01;

public class Exercise01_11 
{

	public static void main(String[] args) 
	{
		// One birth every 7 seconds;
		int b = 7;
		
		// One death every 13 seconds;
		int d = 13;
		
		// One new immigrant every 45 seconds;
		int i = 45;
		
		// Current population
		int p = 312032486;
		
		// Number of days in one year
		int days = 365;
		
		// Number of seconds in one year
		int n = 86400 * 365;
		
		// Population in one year
		int calPop = (n / 7) + (n / 45) - (n / 13);
		
		// Total population in five years
		int totalPop = p + calPop;
		System.out.println("The population for each of the next five years");
		System.out.println("Year 1: " +totalPop);
		System.out.println("Year 2: " +(totalPop * 2));
		System.out.println("Year 3: " +(totalPop * 3));
		System.out.println("Year 4: " +(totalPop * 4));
		System.out.println("Year 5: " +(totalPop * 5));
	}
}



/**
 * Output
 * The population for each of the next five years
 * Year 1: 314812582
 * Year 2: 629625164
 * Year 3: 944437746
 * Year 4: 1259250328
 * Year 5: 1574062910
 */