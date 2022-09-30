-----------------------------------------------------------
---Student Name: Daniela Contreras
--- Date: 03/14/22
---an_array.ada completes print and read functions 

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_text_IO;
with Ada.Integer_text_IO; use Ada.Integer_Text_IO;

procedure an_array is
    type Vector is array (Positive range <>) of Float;
    Size : Integer := 0;

----------------------------------------------------------
--Receive: anArray, empty array , size, 
--amount of elements 
----------------------------------------------------------
procedure input_array(anArray: out Vector; Size: Integer)is
begin
    Put_line("Enter array values: ");
    for I in anArray'Range loop
        Get (anArray(I));
    end loop;
end input_array;
---------------------------------------------
--Receive: anArray,of size n
----------------------------------------------
procedure output_array(anArray: Vector) is
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
end output_array;
--has user put in size of array--
begin
Put ("Enter desired size of array: ");
Get(size);
declare
    anArray : Vector(1 .. Size);
--input and output---
begin
    if Size /=0 then
        input_array(anArray,Size);
    end if;
    output_array(anArray);
end;
end an_array;
