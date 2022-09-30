-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Daniela Contreras ldc6
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure log_table is

   Start, Stop, Increment : Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   loop
      exit when  (Start > Stop); -- condition we are testing. Telling it to stop if Start > Stop

      Put( "the log of");
      Put (Start);
      Put ("is" );
      Put(log(Start, 10.0) ); -- math log10() for Ada
      New_Line;
      Start := Start + Increment; -- takes the value of the incrementation plus the start number
   end loop; -- terminates loop


end log_table;

