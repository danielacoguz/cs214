Script started on 2022-01-29 22:31:30-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="166" LINES="13"]
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ cat year-[K_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   function YearCode(year: string) return integer is --begins the function
   begin
      if year = "freshman " then 
         return 1;
      elsif year = "sophomore" then
         return 2;
      elsif year = "junior   " then
         return 3;
      elsif year = "senior   " then
         return 4;
      else
         return 0;
      end if;
   end yearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;
  



]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ gnat [Kmake year_codes
gnatmake: "year_codes" up to date.
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ./year_codes
Enter your academic year: freshman
          1
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ./year_codes
Enter your academic year: sophmo  omore
          2
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ./year_codes
Enter your academic year: junior
          3
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ./year_codes
Enter your academic year: senior
          4
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ./year_codes
Enter your academic year: 8 eighth
          0
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ./year_codes
Enter your academic year: fifth
          0
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ sxit[K[K[K[Kexit
exit

Script done on 2022-01-29 22:34:50-05:00 [COMMAND_EXIT_CODE="0"]
