Script started on 2022-04-01 01:28:17-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="137" LINES="11"]
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ ruby NameTester.rbcd 08[KLabs/[K[K[K[K[K[K[K[Kgnatmake name_tester
gnatmake: "name_tester" up to date.
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ ./name_[K[K[K[K[K[K[Kscript script.ada
Script started, file is script.ada
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date: 03/10/22
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  -- replace this line with the definition of NAME_SIZE
  NAME_SIZE : constant integer := 8;
  -- replace this line with the definition of Name
  type Name is
    record
      MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
    end record;
  aName : Name ;

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init(TheName : out Name; First, Middle, Last : in String) is
    begin
      TheName.MyFirst := First;
      TheName.MyMiddle := Middle;
      TheName.MyLast := Last;
    end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
    begin
      return TheName.MyFirst;
    end getFirst;
   ----------------------------------------------
  -- getMiddle(Name) retrieves Name.MyMiddle        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                  -
  ----------------------------------------------

  function getMiddle(TheName : in Name) return String is
    begin
      return TheName.MyMiddle;
    end getMiddle;
  ----------------------------------------------
  -- getLast(Name) retrieves Name.MyLast        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                  -
  ----------------------------------------------
  function getLast(TheName : in Name) return String is
    begin
      return TheName.MyLast;
    end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is
    begin
      return TheName.MyFirst & TheName.MyMiddle & TheName.MyLast;
    end getFullName;
  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  procedure Put(theName : in Name) is
  begin
    Put(theName.MyFirst);
    Put(theName.MyMiddle);
    Put(theName.MyLast);
  end Put;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

  pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
  pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                "getFullName() failed");

  Put(aName); New_line;
  Put("All tests passed!"); New_line;

end name_tester;

]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ [K]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ g[Kgnatmake name_tester
gnatmake: "name_tester" up to date.
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ ./name_tester
John    Paul    Jones   
All tests passed!
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ exit
exit
Script done, file is script.ada
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ script script.java
Script started, file is script.java
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
Script done, file is script.java
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ script script.clojure
Script started, file is script.clojure
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ cat nameTester.clj
cat: nameTester.clj: No such file or directory
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ script script.clojure
Script started, file is script.clojure
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ cd src
]0;ldc6@remotel1: ~/cs214/Labs/08/src[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08/src[00m$ cat nameTester.clj
;;;; nameTester.clj creates and tests a clojure Name type.
;;;;
;;;; Output: results of testing Name functions.
;;;;
;;;; Usage: clojure -m nameTester
;;;;
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date:03/2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)   ; program name

;;; define a Clojure record named Name 
;;; (which compiles to a Java class).

(defrecord Name [firstName, middleName, lastName])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;