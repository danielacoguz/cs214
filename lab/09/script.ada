Script started on 2022-03-23 20:54:10-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="123" LINES="13"]
]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ cat name_tester.adb
-- name_tester.adb "test-drives" the Name type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by:Daniela Contreras
-- Date:03/18/22
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is
  NAME_SIZE : constant Positive := 8;

  type Name is
    record
      myFirst,
      myMiddle,
      MyLast : String (1..NAME_SIZE);
    end record;

    aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable     
  --  Receive: Nm, the Name variable;          
  --          First, the first name;         
  --          Middle, the middle name;      
  --          Last, the last name.         
  -- Return: Nm, its fields set to First, 
  --               Middle, and Last.     
  ----------------------------------------------

  procedure Init(Nm: out Name;
                 First, Middle, Last : in String) is
  begin
    Nm.MyFirst := First;
    Nm.MyMiddle := Middle;
    Nm.MyLast := Last;
  end Init;
  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getFirst( Nm: in Name) return String is
  begin
    return Nm.MyFirst;
  end getFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: Nm, a Name.        
  -- PRE: Nm has been initialized.
  -- Return: Nm.myMiddle. 
  ----------------------------------------------
  function getMiddle( Nm: in Name) return String is
  begin
     return Nm.MyMiddle;
  end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Nm, a Name.                    
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myLast.                        
  ----------------------------------------------
  function getLast( Nm: in Name) return String is
  begin
     return Nm.MyLast;
  end getLast;

  ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Nm, a Name.                      -
  -- PRE: Nm has been initialized.             -
  -- Return: a String representation of Nm.    -
  ----------------------------------------------
  function getFullName( Nm: in Name) return String is
  begin
    return Nm.MyFirst & " "
           & Nm.MyMiddle & " "
           & Nm.MyLast;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Nm has been initialized.             -
  -- Receive: Nm, a Name.                      -
  -- Output: Nm, to the screen.                -
  ----------------------------------------------
  procedure Put(Nm: in Name) is
  begin
    Put( getFullName(Nm) );
  end Put;

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", 
                   "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", 
                   "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;
end name_tester;

]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ cat name_package.ab[Kdb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date: 03/28/22
---------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

package body name_package is
-----------------------------------------------------------
    -- Init initializes a Name variable     
    --  Receive: Thename, the Name variable;          
    --          First, the first name;         
    --          Middle, the middle name;      
    --          Last, the last name.         
    -- Return: TheName, its fields set to First, 
    --               Middle, and Last.     
--------------------------------------------------------------
procedure Init(TheName: out Name;
                First, Middle, Last : in String) is
begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
end Init;
-----------------------------------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getFirst( TheName: in Name) return String is
  begin
    return TheName.MyFirst;
  end getFirst;
----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: TheName, a Name.        
  -- PRE: TheName has been initialized.
  -- Return: TheName.myMiddle. 
  ----------------------------------------------
  function getMiddle( TheName: in Name) return String is
  begin
     return TheName.MyMiddle;
  end getMiddle;
----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: TheName, a Name.                    
  -- PRE: TheName has been initialized.            
  -- Return: TheName.myLast.                        
  ----------------------------------------------
  function getLast( TheName: in Name) return String is
  begin
     return TheName.MyLast;
  end getLast;
 ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: TheName, a Name.                      -
  -- PRE: TheName has been initialized.             -
  -- Return: a String representation of TheName.    -
  ----------------------------------------------
  function getFullName( TheName: in Name) return String is
  begin
    return TheName.MyFirst & " "
           & TheName.MyMiddle & " "
           & TheName.MyLast;
  end getFullName;
 ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: TheName has been initialized.             -
  -- Receive: TheName, a Name.                      -
  -- Output: TheName, to the screen.                -
  ----------------------------------------------
  procedure Put(TheName: in Name) is
  begin
    Put( getFullName(TheName) );
  end Put;
-----------------------------------------------------------------------
end name_package;


]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ gcc -c name_tester
[01m[Kgcc:[m[K [01;35m[Kwarning: [m[Kname_tester: linker input file unused because linking not done
]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ gcc -c name_package
[01m[Kgcc:[m[K [01;31m[Kerror: [m[Kname_package: No such file or directory
[01m[Kgcc:[m[K [01;31m[Kfatal error: [m[Kno input files
compilation terminated.
]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ gnatbind name_tester.ali
]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ gnatlink name_tester.ali
]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/09/ada[00m$ ./name_tester[Kr
John     Paul     Jones   
All tests passed!
]0;ldc6@remotel1: ~/cs214/Labs/09/ada[01;32mldc6@remotel1[00m:[01;34m~/cs214/La