-- penguin_package.adb gives penguin-related definitions
--  by over-riding Bird-related definitions.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:Daniela Contreras
-- Date:03/30/22
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;
package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin Call (Over-rides Bird.Call())         -
 -- Receive: A_Penguin, a Penguin_Type.                 -
 -- Return: "Huh-huh-huh-huuuu"                                 -
 ----------------------------------------------------
function Call(A_Penguin : in Penguin_Type) return String is
    begin
     return "Huh-huh-huh-huuuu";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, a Penguin_Type.                  -
 -- Return: "Penguin".                                 -
 -----------------------------------------------------
function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
     return "Penguin";
    end Type_Name;


end Penguin_Package;