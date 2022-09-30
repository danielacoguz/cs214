-- walkingbird_package.ads gives walking-related declarations,
--
--  and derives flying from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:Daniela Contreras
-- Date:03/30/22
---------------------------------------------------

with Bird_Package; use Bird_Package;

package WalkingBird_Package is

    type WalkingBird_Type is new Bird_Type with private;
 ----------------------------------------------------
 -- A Duck's Movement (Over-rides Bird.Call())          -
 -- Receive: A_Bird, a Duck_Type.                   -
 -- Return: "flies by!"                                -
 ----------------------------------------------------
    function  Movement(A_WalkingBird : in WalkingBird_Type) return String;
private

    type WalkingBird_Type is new Bird_Type with
        record
            null;
        end record;
end WalkingBird_Package;