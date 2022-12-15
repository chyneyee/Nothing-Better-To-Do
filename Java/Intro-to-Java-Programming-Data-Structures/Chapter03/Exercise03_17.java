/**
 * @author mychin
 * Exercise03_17.java 
 * 15 Dec 2022 11:10:57 am
 * (Game: scissor, rock, paper) Write a program that plays the popular scissor–rock–paper game. 
 * (A scissor can cut a paper, a rock can knock a scissor, and a paper can wrap a rock.) 
 * The program randomly generates a number 0, 1, or 2 representing scissor, rock, and paper. 
 * The program prompts the user to enter a number 0, 1, or 2 and displays a message indicating 
 * whether the user or the computer wins, loses, or draws. 
 * 
 * Here are sample runs:
 * scissor (0), rock (1), paper (2): 1
 * The computer is scissor. You are rock. You won
 *
 * scissor (0), rock (1), paper (2): 2
 * The computer is paper. You are paper too. It is a draw
 */
package chapter03;

import java.util.Scanner;

public class Exercise03_17 
{

	public static void main(String[] args) 
	{
		// Generates random number
		int randNum = (int) (Math.random() * 2);

		// Prompts for input from user
		Scanner input = new Scanner(System.in);
		System.out.print("scissor (0), rock (1), paper (2): ");
		int choice = input.nextInt();
			// Display the result
			switch (randNum) 
			{
			case 0:
				if (choice == 0)
					System.out.print("The computer is scissor. You are scissor too. It is a draw");
				else if (choice == 1)
					System.out.print("The computer is scissor. You are rock. You won");
				else if (choice == 2)
					System.out.print("The computer is scissor. You are paper. You lost.");
				break;
			case 1:
				if (choice == 0)
					System.out.print("The computer is rock. You are scissor. You lost.");
				else if (choice == 1)
					System.out.print("The computer is rock. You are rock too. It is a draw");
				else if (choice == 2)
					System.out.print("The computer is rock. You are paper. You won.");
			case 2:
				if (choice == 0)
					System.out.print("The computer is paper. You are scissor. You won.");
				else if (choice == 1)
					System.out.print("The computer is paper. You are rock. You lost.");
				else if (choice == 2)
					System.out.print("The computer is paper. You are paper too. It is a draw");
				break;
			}

	}

}
