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
