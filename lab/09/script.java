Script started on 2022-03-18 16:07:57-04:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;ldc6@gold23: ~/cs214/Labs/09/java[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/java[00m$ java NameTestermake[Kjava NameTesterc -deprecation NameTester.java                                  cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Daniela Contreras
 * Date: 03/18/2022
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}




]0;ldc6@gold23: ~/cs214/Labs/09/java[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/java[00m$ cat Name/java
cat: Name/java: No such file or directory
]0;ldc6@gold23: ~/cs214/Labs/09/java[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/java[00m$ cat Name.java
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student:
 * Date:
 ************************************************************/
// the Name class appears outside of the rest of the program
class Name {

    // Name object constructor with initialization  
    public Name(final String first, final String middle, final String last) {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
    }
   
    // extractor for first name of a Name object
    public final String getFirst() {
        return myFirst;
    }
  
    // extractor for middle name of a Name object
    public final String getMiddle() {
        return myMiddle;
    }
  
    // extractor for last name of a Name object
    public final String getLast() {
        return myLast;
    }
    
    // return string created by piecing together first, middle, and last names
    public final String toString() {
        return myFirst + ' ' + myMiddle + ' ' + myLast;
    }
  
    private String myFirst, myMiddle, myLast;  // private instance variables
  }
  

]0;ldc6@gold23: ~/cs214/Labs/09/java[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/java[00m$ javac -deprecation NameTester.java
]0;ldc6@gold23: ~/cs214/Labs/09/java[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/java[00m$ java NameTs ester
John Paul Jones
All tests passed!
]0;ldc6@gold23: ~/cs214/Labs/09/java[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/java[00m$ exit
exit

Script done on 2022-03-18 16:09:42-04:00 [COMMAND_EXIT_CODE="0"]
