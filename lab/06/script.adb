Script started on 2022-02-18 23:16:58-05:00 [TERM="xterm-256color" TTY="/dev/pts/4" COLUMNS="80" LINES="24"]
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ cat     script script.rubycd 06[KLabs/cs214[4Pexitruby split.rb[1Pcat split.rb  adb
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

]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ gnat^?[K    cat split.adbscript script.rubycd 06[KLabs/cs214[4Pexitruby split.rb[1Pcat split.rb[1@ruby split.rb[8Pcd 06Labs/cs214ruby split.rb[8Pcd 06..     gnatmake string
gnatmake: "string" not found
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ gnatmake string[2Pcat split.adbscript script.ruby
Script started, file is script.ruby
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ script script.rubycd 06[KLabs/cs214[4Pexitruby split.rb[1Pcat split.rb  adb
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

]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ cat split.adbscript script.rubycd 06[KLabs/cs214[4Pexitruby split.rbexit[Kcd cs214Labs/[3P06script script.ruby[5Pcat split.adb[Kgnatmake split
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
To split a string, enter the string: 6
Enter the split position: 6
The first part is 6                                       
 and the second part is                                         
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ ./split
To split a string, enter the string: daniela
Enter the split position: 4
The first part is dan                                     
 and the second part is iela                                    
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ exit
exit
Script done, file is script.ruby
]0;ldc6@gold31: ~/cs214/Labs/06[01;32mldc6@gold31[00m:[01;34m~/cs214/Labs/06[00m$ exit

Script done on 2022-02-18 23:20:28-05:00 [COMMAND_EXIT_CODE="0"]
