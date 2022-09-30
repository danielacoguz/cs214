Script started on 2022-02-02 19:55:19-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="151" LINES="12"]
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ cat LETTER[K[K[K[K[K[KLetterGrades.java
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



]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ -deprecation LetterGrades.java
-deprecation: command not found
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ javac -dec[Kprecation LetterGrades.java
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
100
A
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
90
A
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
89
B
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
79
C
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
65
D
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
55
F
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ java LetterGrades

Enter your grade: 
30
F
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ exit
exit

Script done on 2022-02-02 19:57:02-05:00 [COMMAND_EXIT_CODE="0"]
