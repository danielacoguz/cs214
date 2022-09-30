Script started on 2022-02-09 03:48:21-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="147" LINES="13"]
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ exitcat factorial.ada[K[Kdb
-- factorial.adb computes n factorial.
--
-- Input: x.
-- Precondition: x >= 1.
-- Output:n! in my case x!.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Daniela Contreras ldc6

--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO; --utilized Ada.Integer_Text_I0 since we utilized integer type values
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial is
-- does Ada have a double or should we usually use Float/integer?
   x, i : Integer; --definning n/x here 

function Factorial(x : Integer) return Integer is 
--making a function named Factorial
-- who's parameter type is is an Integer, variable x
      result : Integer; --return integer type is Integer and variable is "result"
      
      begin     --begins body  
         result := 1;  --for factorials, we can't have 0 or anything less than 1 so we initialize result to be 1
         i := 2; --iterator must then be 2 since that's the next integer when completing factorials
         for i in 2 .. x loop --setting range for iterator to be between 2 and x amount then looping through
            result := result * i; --result variable assigned to our result times the itrator amount taken after looping
         end loop; --ends loops

         return result; --returns result
      end; --terminates body

begin --begins body under Procedure
   Put( "the factorial of: "); --output to user
   Get(x); --obtains what user has inputed
   Put("is");  -- string to finish sentence 
   Put(Factorial(x) ); --obtains result from function Factorial (x)
end factorial;  -- end of entire program 

]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ gnatmake factorial
x86_64-linux-gnu-gcc-7 -c factorial.adb
x86_64-linux-gnu-gnatbind-7 -x factorial.ali
x86_64-linux-gnu-gnatlink-7 factorial.ali
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 2
is          2
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 1
is          1
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 3
is          6
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 4
is         24
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 10
is    3628800
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 5
is        120
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 7
is       5040
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ./factorial
the factorial of: 8
is      40320
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ exit
exit

Script done on 2022-02-11 03:50:07-05:00 [COMMAND_EXIT_CODE="0"]
