Script started on 2022-02-10 13:00:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="174" LINES="13"]
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ cat Factorial.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: n as a double.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras ldc6
 ********************************************************/
import java.util.Scanner; 		// Get input

class Factorial{

    public static double factorial(double n) {
      
      double answer = 1.0;

      for (int i = 2; i <= n; i++) {
        answer *= i;
      }

      return answer;
   }

    public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    /* System.out.println("To display n factorial,");
    System.out.println("enter n: ");*/
    System.out.println ("\nTo compute n! \n enter n: ");
    double n;
    n = keyboard.nextDouble();
    
    System.out.println ("\nFactorial(n) is:  " + factorial(n));
}
  }
    


   ]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ javac -deprecation Factorial.java
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ java Factorial

To compute n! 
 enter n: 
2

Factorial(n) is:  2.0
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ java Factorial

To compute n! 
 enter n: 
4

Factorial(n) is:  24.0
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ java Factorial

To compute n! 
 enter n: 
10

Factorial(n) is:  3628800.0
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ java Factorial

To compute n! 
 enter n: 
7

Factorial(n) is:  5040.0
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ java Factorial

To compute n! 
 enter n: 
12

Factorial(n) is:  4.790016E8
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ java Factorial

To compute n! 
 enter n: 
5

Factorial(n) is:  120.0
]0;ldc6@gold26: ~/cs214/Projects/04[01;32mldc6@gold26[00m:[01;34m~/cs214/Projects/04[00m$ exit
exit

Script done on 2022-02-10 13:01:46-05:00 [COMMAND_EXIT_CODE="0"]
