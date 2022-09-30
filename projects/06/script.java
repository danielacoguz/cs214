Script started on 2022-03-17 23:44:27-04:00 [TERM="xterm-256color" TTY="/dev/pts/20" COLUMNS="80" LINES="24"]
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ exit[Kcat QuadraticRoots.java
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





]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ javac -deprecation QuadraticRoots.java
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ java QUadraticRoots
Error: Could not find or load main class QUadraticRoots
Caused by: java.lang.ClassNotFoundException: QUadraticRoots
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ java Quadra           java QUadraticRootsc -deprecation QuadraticRoots.java[15Pcat QuadraticRoots.javaexit[K./mainrootscat mainroots.adb                 script script.java
Script started, file is script.java
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ cat QuadraticRoots.java
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





]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ javac -deprecation QuadraticRoots.java
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ java QuadraticRoots
To display the Quadratic Root
enter a value for a: 
3
enter a value for b: 
8
enter a value for c: 
2
The roots are -0.2792407799438735 and -2.3874258867227933

]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ java QuadraticRoots
To display the Quadratic Root
enter a value for a: 
0
enter a value for b: 
3
enter a value for c: 
5
QuadraticRoots(): a is a zero!
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ java QuadraticRoots
To display the Quadratic Root
enter a value for a: 
2
enter a value for b: 
1
enter a value for c: 
8

 QuadraticRoots(): b^2 - 4ac is negative!
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ java QuadraticRoots
To display the Quadratic Root
enter a value for a: 
1
enter a value for b: 
9
enter a value for c: 
10
The roots are -1.2984378812835757 and -7.701562118716424

]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ exit
exit
Script done, file is script.java
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ exit

Script done on 2022-03-18 00:01:53-04:00 [COMMAND_EXIT_CODE="0"]
