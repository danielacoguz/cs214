Script started on 2022-02-18 23:38:58-05:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="80" LINES="24"]
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by:
-- Date:
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split(The_String: in String; Pos: in Natural; First_Part: in out String; Last_part: in out String ) is--begins function
   begin
      Move(The_String(1 .. Pos-1), First_Part);
      Move(The_String(Pos .. The_String'length), Last_Part);
   end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ gnatmake split
gnatmake: "split" up to date.
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ ./split
To split a string, enter the string: dai  aniela
Enter the split position: 7
The first part is daniel                                  
 and the second part is a                                       
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ exit
exit

Script done on 2022-02-18 23:41:16-05:00 [COMMAND_EXIT_CODE="0"]
