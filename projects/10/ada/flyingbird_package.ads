-- flying_bird.ads gives flyingbird-related declarations,
--
--  and derives flying from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:Daniela Contreras
-- Date:03/30/22
---------------------------------------------------

with Bird_Package; use Bird_Package;

package FlyingBird_Package is

    type FlyingBird_Type is new Bird_Type with private;
 ----------------------------------------------------
 -- A FlyingBird's Movement (Over-rides Bird.Call())          -
 -- Receive: Bird, a FlyingBird_Type.                   -
 -- Return: "flies by!"                                -
 ----------------------------------------------------
    function Movement(A_FlyingBird : in FlyingBird_Type) return String;
private

    type FlyingBird_Type is new Bird_Type with
        record
            null;
        end record;
end FlyingBird_Package;