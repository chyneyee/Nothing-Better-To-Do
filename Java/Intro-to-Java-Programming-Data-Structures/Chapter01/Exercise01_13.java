/**
 * @author mychin
 * Exercise01_13.java 
 * 17 Oct 2022 4:15:49 pm
 * 
 * (Algebra: solve 2 x 2 linear equations) You can use Cramer’s rule to solve the following
 * 2 * 2 system of linear equation:
 * 	ax + by = e   x = 	ed - bf	  y = af - ec
 * 	cx + dy = f       	ad - bc       ad - bc
 * Write a program that solves the following equation and displays the value for x and y:
 * 		3.4x + 50.2y = 44.5
 * 		2.1x + .55y = 5.9
 */
package chapter01;

public class Exercise01_13 
{
	public static void main(String[] args) 
	{
		
		double x = ((44.5 * 0.55) - (50.2 * 5.9)) / ((3.4 * 0.55) - (50.2 * 2.1));
		double y = ((3.4 * 5.9) - (44.5 * 2.1)) / ((3.4 * 0.55) - (50.2 * 2.1));
		System.out.println("x = " +x);
		System.out.println("y = " +y);

	}

}



/**
 * Output
 * x = 2.623901496861419
 * y = 0.7087397392563978
 */