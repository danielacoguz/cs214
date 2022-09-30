Script started on 2022-02-04 23:41:46-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="154" LINES="12"]
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ cat o[KLog [KTable.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras ldc6
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();

  
     while(start <= stop){
       // loops until the start isn't greater than desired stop
       System.out.println("the log of " + start +  " is " + Math.log10(start));
       // printout out to the user the log
       start = start +  increment; // incrementation equation
     }
   }
}

]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ javac -deprecation LogTable.java
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
20  1
10
0.5
the log of 1.0 is 0.0
the log of 1.5 is 0.17609125905568124
the log of 2.0 is 0.3010299956639812
the log of 2.5 is 0.3979400086720376
the log of 3.0 is 0.47712125471966244
the log of 3.5 is 0.5440680443502757
the log of 4.0 is 0.6020599913279624
the log of 4.5 is 0.6532125137753437
the log of 5.0 is 0.6989700043360189
the log of 5.5 is 0.7403626894942439
the log of 6.0 is 0.7781512503836436
the log of 6.5 is 0.8129133566428556
the log of 7.0 is 0.8450980400142568
the log of 7.5 is 0.8750612633917001
the log of 8.0 is 0.9030899869919435
the log of 8.5 is 0.9294189257142927
the log of 9.0 is 0.9542425094393249
the log of 9.5 is 0.9777236052888477
the log of 10.0 is 1.0
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
20
2
the log of 1.0 is 0.0
the log of 3.0 is 0.47712125471966244
the log of 5.0 is 0.6989700043360189
the log of 7.0 is 0.8450980400142568
the log of 9.0 is 0.9542425094393249
the log of 11.0 is 1.0413926851582251
the log of 13.0 is 1.1139433523068367
the log of 15.0 is 1.1760912590556813
the log of 17.0 is 1.2304489213782739
the log of 19.0 is 1.2787536009528289
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ exit
exit

Script done on 2022-02-04 23:43:33-05:00 [COMMAND_EXIT_CODE="0"]
