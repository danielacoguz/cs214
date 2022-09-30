/* YearCodes.java is a driver for function letterGrade().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * COmpleted by Daniela Contreras ldc6
 ****************************************************************/

import java.util.Scanner;

public class LetterGrades {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your grade: "); // prompt

      int average = keyboard.nextInt();      // read average
      System.out.println(letterGrade(average)); // display its code
   }

   /***************************************************************
    * letterGrade() converts an integer into a letter grade.
    *
    * Receive: grade, a string.
    * PRE:letter Grade is {A, B, C, D, or F}.
    * Return: the letter corresponding to the grade.
    */
    public static char letterGrade(int average)
    {
      switch (average / 10)
      {
         case 10: case 9:
            return 'A';
         case 8:
            return 'B';
         case 7:
            return 'C';
         case 6:
            return 'D';
         default:
            return 'F';
      }
    }
}



