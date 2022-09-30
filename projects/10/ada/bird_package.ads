-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date:03/23/22
---------------------------------------------------

package Bird_Package is

     type Bird_Type is abstract tagged private;

 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
     procedure Init(A_Bird : out Bird_Type; Name : in String);
 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
     function  Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
     function  Call(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
     function  Type_Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
     procedure Put(A_Bird : in Bird_Type'Class);

    function  Movement(A_Bird : in Bird_Type) return String is abstract;

private
     type Bird_Type is abstract
        tagged record
            My_Name : String(1..7);
        end record;

end Bird_Package;
