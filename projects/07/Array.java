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
}