Script started on 2022-02-02 20:01:43-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="151" LINES="12"]
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ cat letter_grades.adb[K[Kbd[K[Kdb
-- letter_grades.adb converts integer grade code to corresponding letter grades.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: average, an integer 
-- Precondition: average is an integer divisible by 10
-- Output: The letter grade (A, B, C, D or F) corresponding to average between 100-90, 80-89, 70-79, 60-69, and below 69.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grades is

   
   grade : integer := 0;
   

   function LetterGrades(average : integer) return character is --begins the function
   begin
      case average / 10 is
         when 10 | 9 => return 'A';
         when 8 => return 'B';
         when 7 => return 'C';
         when 6 => return 'D';
         when others => return 'F';
      end case;
   end LetterGrades;
-- this function is the one that has the user input an integer from 100-0 in order to get a ltter grade
begin                                          
   Put("Enter your grade average: ");           -- Prompt for input
   Get(grade);                   -- Input
   Put( LetterGrades(grade) );                       -- Convert and output
   New_Line;
end letter_grades;]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ gnatmake letter_grades
x86_64-linux-gnu-gcc-7 -c letter_grades.adb
x86_64-linux-gnu-gnatbind-7 -x letter_grades.ali
x86_64-linux-gnu-gnatlink-7 letter_grades.ali
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 99
A
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 1 100
A
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 80
B
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 78
C
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 8 68
D
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 54
F
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 30
F
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ./letter_grades
Enter your grade average: 2
F
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ exit
exit

Script done on 2022-02-02 20:04:02-05:00 [COMMAND_EXIT_CODE="0"]
