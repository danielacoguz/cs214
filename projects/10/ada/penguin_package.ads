-- Penguin_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:Daniela Contreras
-- Date:03/30/22
---------------------------------------------------

with WalkingBird_Package;
use WalkingBird_Package;

package Penguin_Package is

    type Penguin_Type is new WalkingBird_Type with private;


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())         -
 -- Receive: A_Penguin, a Penguin.                      -
 -- Return: "Huh-huh-huh-huuuu"                                 -
 ----------------------------------------------------
    function  Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, a Penguin.                       -
 -- Return: "Penguin".                                 -
 -----------------------------------------------------
    function  Type_Name(A_Penguin : in Penguin_Type) return String;
private

    type Penguin_Type is new WalkingBird_Type with
        record
            null;
        end record;

end Penguin_Package;
