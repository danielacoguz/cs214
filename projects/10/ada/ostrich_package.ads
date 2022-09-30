-- ostrich_package.ads gives Ostrich-related declarations,
--
--  and derives Ostrich from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:Daniela Contreras
-- Date:03/30/22
---------------------------------------------------

with  WalkingBird_Package;
use  WalkingBird_Package;

package Ostrich_Package is

    type Ostrich_Type is new WalkingBird_Type with private;


 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())         -
 -- Receive: A_Ostrich, a Ostrich.                      -
 -- Return: "Snork!"                                 -
 ----------------------------------------------------
    function  Call(A_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Ostrich                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, a Ostrich.                       -
 -- Return: "Ostrich".                                 -
 -----------------------------------------------------
    function  Type_Name(A_Ostrich : in Ostrich_Type) return String;
private

    type Ostrich_Type is new WalkingBird_Type with
        record
            null;
        end record;

end Ostrich_Package;
