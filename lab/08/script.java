Script started on 2022-04-01 01:30:10-04:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="137" LINES="17"]
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student:Daniela Contreras
 * Date:03/11/2022
 *************************************************************/

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

class Name
{
  private String myFirst,
                  myMiddle,
                  myLast;
  public Name(String first, String middle, String last)
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }
  public String getFirst()
  {
     return myFirst;
  }
  public String getMiddle()
  {
     return myMiddle;
  }
  public String getLast()
  {
     return myLast;
  }
  public String toString()
  {
     return myFirst + ' ' + myMiddle + ' ' + myLast;
  }
  public void print() {
    System.out.println( toString() );
 }

};




]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ javac -deprecation NameTester.java
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ java NameTester
John Paul Jones
All tests passed!
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ exit
exit

Script done on 2022-04-01 01:31:41-04:00 [COMMAND_EXIT_CODE="0"]
