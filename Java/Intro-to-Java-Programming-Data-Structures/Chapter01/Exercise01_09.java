/**
 * @author mychin
 * Exercise01_09.java 
 * 17 Oct 2022 1:18:38 pm
 */
package chapter01;

public class Exercise01_09 
{

	public static void main(String[] args) 
	{
		double width = 5.3;
		double height = 8.6;
		double area = width * height;
		double perimeter = 2 * (width + height);
		
		System.out.println("The area of a rectangle with a width = 5.3 and height = 8.6 is " +area);
		System.out.println("The perimeter of a rectangle with a width = 5.3 and height = 8.6 is " +perimeter);
	}
}



/*
 * Output
 * The area of a rectangle with a width = 5.3 and height = 8.6 is 45.58
 * The perimeter of a rectangle with a width = 5.3 and height = 8.6 is 27.799999999999997
 */
