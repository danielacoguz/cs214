-- factorial.adb computes n factorial.
--
-- Input: x.
-- Precondition: increment is >= 1.
-- Output: x factorial.
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

