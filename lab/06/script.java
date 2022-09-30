Script started on 2022-02-18 16:35:08-05:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="80" LINES="24"]
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ cat Splitter.java
cat: Splitter.java: No such file or directory
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ cat Split.java   ava
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Daniela Contreras
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
     public static void splitter(String theString, int pos, String[] results)
   {
    results [0] = theString.substring(0, pos);

    results [1] = theString.substring(pos, theString.length());


   } 




}
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ javac -deprecation Split.java
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ java Split. 

To split a string, enter the string: 
down    substring

Enter the split position: 
4

The first part is subs
 and the second part is tring
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ java Split

To split a string, enter the string: 
gori    bahamas

Enter the split position: 
3

The first part is bah
 and the second part is amas
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ java Split

To split a string, enter the string: 
colorado

Enter the split position: 
6

The first part is colora
 and the second part is do
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ java Split

To split a string, enter the string: 
program

Enter the split position: 
1

The first part is p
 and the second part is rogram
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ java Split

To split a string, enter the string: 
array

Enter the split position: 
3

The first part is arr
 and the second part is ay
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ exit
exit

Script done on 2022-02-18 16:40:00-05:00 [COMMAND_EXIT_CODE="0"]
