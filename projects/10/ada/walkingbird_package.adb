-- walkingbird_package.ads gives walkingBird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date:03/30/22
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;

package body WalkingBird_Package is

 ----------------------------------------------------       -
 -- Receive: A_Bird, a WalkingBird_Type.                   -
 -- Return: type of movement                               -
 ----------------------------------------------------
    function Movement(A_WalkingBird : in WalkingBird_Type) return String is
    begin
        return "strolled by ";
    end Movement;
end WalkingBird_Package;