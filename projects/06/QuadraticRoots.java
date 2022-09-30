/* subprograms.java is a driver for method arg().
 *
 * Started by: Daniela Contreras ldc6 at Calvin College
 *
 * Date:03/05/2022
 *
 * Precondition: arg has double values passed.
 * Output: the squareroot of the double values
*/ 
import java.lang.Math;
import java.util.Scanner; 

public class QuadraticRoots{

    public static double root1;

    public static double root2;


    public static void main(final String[] args){

        double a, b, c;
        final Scanner keyboard = new Scanner(System.in);
        System.out.println("To display the Quadratic Root");

        System.out.println("enter a value for a: ");
        a = keyboard.nextDouble();

        System.out.println("enter a value for b: ");
        b = keyboard.nextDouble();

        System.out.println("enter a value for c: ");
        c = keyboard.nextDouble();

        if(Calculations(a,b,c)){

            System.out.println("The roots are " + root1 + " and " + root2 + "\n");
        keyboard.close();
        }

    }

    public static boolean Calculations(double a, double b, double c){
        if (a != 0){
            double arg = (Math.pow(b, 2.0) -( 4 * a * c));
                if (arg >= 0){
                    root1 = (-b + Math.sqrt(arg)) / (2*a);
                    root2 = (-b - Math.sqrt(arg)) / (2*a);
                    return true;
                
                }else {
                    System.out.println("\n QuadraticRoots(): b^2 - 4ac is negative!");
                    root1 = root2 = 0.0;
                    return false;
                }
        } else {
            System.out.println("QuadraticRoots(): a is a zero!");
            root1 = root2 = 0.0;
            return false;
        }
    }  
}





