/* LogTable.java displays a table of logarithms.
 *
 * Input: n as a double.
 * PRE: n is any number.
 * Output: A factorial number of n.
 * Date: 02/07/22
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
    


   