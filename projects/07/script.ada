Script started on 2022-03-15 09:11:53-04:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="106" LINES="27"]
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ cat an_array.adb
-----------------------------------------------------------
---Student Name: Daniela Contreras
--- Date: 03/14/22
---an_array.ada completes print and read functions 

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_text_IO;
with Ada.Integer_text_IO; use Ada.Integer_Text_IO;
--declaring vector type-----
procedure an_array is
    type Vector is array (Positive range <>) of Float;
    Size : Integer := 0;

----------------------------------------------------------
--Receive: anArray, empty array , size, 
--amount of elements 
----------------------------------------------------------
procedure read_array(anArray: out Vector; Size: Integer)is
begin
    Put_line("Enter array values: ");
    for I in anArray'Range loop
        Get (anArray(I));
    end loop;
end read_array;
---------------------------------------------
--Receive: anArray,of size n
----------------------------------------------
procedure print_array(anArray: Vector) is
begin 
    if anArray'Length /= 0 then
        Put ("Array: [ ");
        for I in anArray'Range loop
            Put (anArray(I));
    end loop;
    Put (" ] ");
    else
        Put("nothing here!");
    end if;
end print_array;
--has user put in size of array--
begin
Put ("Enter desired size of array: ");
Get(size);
declare
    anArray : Vector(1 .. Size);
--input and output---
begin
    if Size /=0 then
        read_array(anArray,Size);
    end if;
    print_array(anArray);
end;
end an_array;
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ gnatmake an_array
gnatmake: "an_array" up to date.
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ ./an_array
Enter desired size of array: 3
Enter array values: 
4
3
2
Array: [  4.00000E+00 3.00000E+00 2.00000E+00 ] 
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ ./an_array
Enter desired size of array: 3
Enter array values: 
2
3
2
Array: [  2.00000E+00 3.00000E+00 2.00000E+00 ] 
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ ./an_array
Enter desired size of array: 6
Enter array values: 
5
43
4
35
3
4
Array: [  5.00000E+00 4.30000E+01 4.00000E+00 3.50000E+01 3.00000E+00 4.00000E+00 ] 
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ exit
exit

Script done on 2022-03-15 09:13:24-04:00 [COMMAND_EXIT_CODE="0"]
