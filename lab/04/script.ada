Script started on 2022-02-04 23:44:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="154" LINES="12"]
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ cat log_table.adb
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

]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ gnatmake log_table
gnatmake: "log_table" up to date.
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ gcc -c lg[Kog_table
[01m[Kgcc:[m[K [01;35m[Kwarning: [m[Klog_table: linker input file unused because linking not done
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ ./log_table
To print a table of logarithms,
 enter the start, stop, and increment values: 1
10
0.5
the log of 1.00000E+00is 0.00000E+00
the log of 1.50000E+00is 1.76091E-01
the log of 2.00000E+00is 3.01030E-01
the log of 2.50000E+00is 3.97940E-01
the log of 3.00000E+00is 4.77121E-01
the log of 3.50000E+00is 5.44068E-01
the log of 4.00000E+00is 6.02060E-01
the log of 4.50000E+00is 6.53212E-01
the log of 5.00000E+00is 6.98970E-01
the log of 5.50000E+00is 7.40363E-01
the log of 6.00000E+00is 7.78151E-01
the log of 6.50000E+00is 8.12913E-01
the log of 7.00000E+00is 8.45098E-01
the log of 7.50000E+00is 8.75061E-01
the log of 8.00000E+00is 9.03090E-01
the log of 8.50000E+00is 9.29419E-01
the log of 9.00000E+00is 9.54243E-01
the log of 9.50000E+00is 9.77724E-01
the log of 1.00000E+01is 1.00000E+00
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ ./log_table
To print a table of logarithms,
 enter the start, stop, and increment values: 1
20
2
the log of 1.00000E+00is 0.00000E+00
the log of 3.00000E+00is 4.77121E-01
the log of 5.00000E+00is 6.98970E-01
the log of 7.00000E+00is 8.45098E-01
the log of 9.00000E+00is 9.54243E-01
the log of 1.10000E+01is 1.04139E+00
the log of 1.30000E+01is 1.11394E+00
the log of 1.50000E+01is 1.17609E+00
the log of 1.70000E+01is 1.23045E+00
the log of 1.90000E+01is 1.27875E+00
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ exit
exit

Script done on 2022-02-04 23:46:20-05:00 [COMMAND_EXIT_CODE="0"]
