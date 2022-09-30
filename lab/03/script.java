Script started on 2022-01-28 13:21:49-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="13"]
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ cat YearCodes.java [K
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

   public static int yearCode(String year)
   {
      if (year.equals("freshman"))
         return 1;

      else 
         if (year.equals("sophomore"))
            return 2;

         else 
            if (year.equals("junior"))
               return 3;

            else 
               if (year.equals("senior"))
                  return 4;

               else
                  return 0;

   }

}
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ javac -deprecation YearCodes.java
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
sophomore
2
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
freshman
1
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
junior
3
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
senior
4
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
fifth
0
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
eight
0
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ java YearCodes

Enter your academic year: 
Senior
0
]0;ldc6@gold13: ~/cs214/Labs/03[01;32mldc6@gold13[00m:[01;34m~/cs214/Labs/03[00m$ exit
exit

Script done on 2022-01-28 13:23:52-05:00 [COMMAND_EXIT_CODE="0"]
