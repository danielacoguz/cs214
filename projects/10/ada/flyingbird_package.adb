-- flying_bird.ads gives flyingBird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date:03/30/22
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;

package body FlyingBird_Package is

 ----------------------------------------------------       -
 -- Receive: Birds, a FlyingBird_type.                   -
 -- Return: type of movement                               -
 ----------------------------------------------------
    function Movement(A_FlyingBird : in FlyingBird_Type) return String is
    begin
        return "flew by ";
    end Movement;
end FlyingBird_Package;