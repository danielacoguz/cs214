-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Daniela Contreras
-- Date:03/29/22
-----------------------------------------------------

with Bird_Package, 
      Duck_Package, 
      Goose_Package, 
      Owl_Package, 
      Kiwi_Package, 
      Penguin_Package, 
      Ostrich_Package, 
      FlyingBird_Package, 
      WalkingBird_Package, 
      Ada.Text_IO;
use  Bird_Package, Duck_Package, Goose_Package, Owl_Package, Kiwi_Package, Penguin_Package, Ostrich_Package, FlyingBird_Package, WalkingBird_Package, Ada.Text_IO;
      


procedure Birds is

      --Bird1 : Bird_Type;       -- base class
      Bird2 : Duck_Type;       -- derived class 1
      Bird3 : Goose_Type;      -- derived class 2
      Bird4 : Owl_Type;        -- derived class 3
      Bird5 : Penguin_Type;    -- derived class 4
      Bird6 : Ostrich_Type;    -- derived class 5
      Bird7 : Kiwi_Type;       -- derived class 6

begin
      Put_Line("Welcome to the Bird Park!");
      Put_Line(" ");

      --New_Line; Init(Bird1, "Tweety");
      --Put(Bird1); New_Line;

      Init(Bird2, "Donald ");
      Put(Bird2); New_Line;

      Init(Bird3, "Mother ");
      Put(Bird3); New_Line;

      Init(Bird4, "Woodsy ");
      Put(Bird4); New_Line;

      Init(Bird5, "Peter  ");
      Put(Bird5); New_Line;

      Init(Bird6, "Orville");
      Put(Bird6); New_Line;

      Init(Bird7, "Kilo   ");
      Put(Bird7); New_Line;

      New_Line;
end Birds;

