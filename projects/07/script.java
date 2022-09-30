Script started on 2022-03-15 09:08:30-04:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="106" LINES="27"]
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ cat Array. .java
/*Array.java writes two utilit subprograms for array processing.

*Name: Daniela Contreras
Date: 03/14/2022
* Wroked with Germaine Hounakey
*/
import java.util.Scanner;

public class Array
{
    public static void main(final String[] args){

        Scanner input = new Scanner(System.in);
        System.out.println("Enter desired lenght of array:  ");
        int length = input.nextInt();
        double[] anArray  = new double[length];



        readArray(anArray, input);
        printArray(anArray);
        System.out.println("  ");

    }
    /* printArray() prints out given array
    and takes in anArray[] of doubles
    */
    public static void printArray (double anArray[]){
        System.out.println("array is: [ ");
        if (anArray.length != 0){
            for(int i = 0; i < anArray.length; i++){
                System.out.println(anArray[i] + "  ");

            }
        }else {
            System.out.print("Array has no elements");

        }
        System.out.println("]");

    }
    /*
    *readArray(); obtains values from specific sized array
    *input: Scanner input 
    *return: anArray with input fromt he user
    receives:array with doubles
    */
    public static void readArray(double anArray[], Scanner input){
        System.out.println("desired values for array are ");
            for (int i= 0; i < anArray.length; i++) {
                anArray[i] = input.nextDouble();
        }
    }
}]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ javac -deprecation Array.java
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ java Array
Enter desired lenght of array:  
3
desired values for array are 
3
4
3
array is: [ 
3.0  
4.0  
3.0  
]
  
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ java Array
Enter desired lenght of array:  
5
desired values for array are 
4
5
4
5
4
array is: [ 
4.0  
5.0  
4.0  
5.0  
4.0  
]
  
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ java Array
Enter desired lenght of array:  
1
desired values for array are 
2
array is: [ 
2.0  
]
  
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ java Array
Enter desired lenght of array:  
3
desired values for array are 
4
0
6
array is: [ 
4.0  
0.0  
6.0  
]
  
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ exit
exit

Script done on 2022-03-15 09:10:08-04:00 [COMMAND_EXIT_CODE="0"]
