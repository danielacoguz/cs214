Script started on 2022-01-17 18:51:25-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="107" LINES="35"]
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ cat CircleArea          rectangleArea.java
/* CircleArea.java computes the area of a rectangle.
 *
 * Input: The height and width of the rectangle.
 * Both variables are float
 * Output: The area of the rectangle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Daniela Contreras
 * Date:01/17/2022
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class rectangleArea {

     /* function rectangleArea() computes a rectangle's area, given its radius.

      * Precondition: height and width are not negative.
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double h, double w) {
        return w * h;               // return an expression
     } // rectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for height and width
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its height: ");

      Scanner keyboard = new Scanner(System.in);

      double height = keyboard.nextDouble();

      System.out.print(" enter its width: ");

      // Create a connection named keyboard to standard in
      

      //Get the number from the user
      double width = keyboard.nextDouble();
      
      // output area
      System.out.println("\nThe area is " + rectangleArea( height,width) + "\n");  
  } // main method

} 
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ javac -deprecation Circle      Rectangle         rectangleArea.java
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ java rectangleArea


To compute the area of a rectangle,
 enter its height: 5
 enter its width: 3

The area is 15.0

]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ java rectangleArea


To compute the area of a rectangle,
 enter its height: 10
 enter its width: 50

The area is 500.0

]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ java rectangleArea


To compute the area of a rectangle,
 enter its height: 28
 enter its width: 16

The area is 448.0

]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ java rectangleArea


To compute the area of a rectangle,
 enter its height: 1
 enter its width: 6

The area is 6.0

]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ 
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ java rectangleArea


To compute the area of a rectangle,
 enter its height: 4
 enter its width: 50

The area is 200.0

]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ exit
exit

Script done on 2022-01-17 18:53:43-05:00 [COMMAND_EXIT_CODE="0"]
