
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date: 01/14/2022
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   width, height, area : float; 

   -- function RectangleArea computes a rectangle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function rectangleArea(w, h: in float) return float is --begins function
   begin
      return h * w;
   end rectangleArea;
-- ends function
begin                           
   New_Line;
   Put_Line("To compute the area of a rectangle,"); --places line then adds bottom "Put" string
   Put("enter its width: ");
   Get(width);
    Put("enter its height: ");
   Get(height);

   area := rectangleArea(height,  width);

   New_Line;
 

   Put("The rectangle's area is ");
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end rectangle_area;
-- Put_Line creates a new line at the bottom
-- However, Put places a string in the console and receives in