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
end letter_grades;