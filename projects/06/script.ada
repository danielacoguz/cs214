Script started on 2022-03-17 23:40:23-04:00 [TERM="xterm-256color" TTY="/dev/pts/19" COLUMNS="80" LINES="24"]
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ cat mair nroots.adb
------------------------------------------------------------------
-- quadraticroots.adb computers the quadratic formula roots
--input: a, b ,c, arg, true_false
--output: root1, root2
--Name: Daniela Contreras
--Date: March 2022
--Helped/Worked with Germaine Hounakey
-------------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure mainroots is
    a, b, c, root1, root2, arg : Float;
    true_false : boolean;
-------------------------------------------------------------------
-- quadraticFormula() computes roots of quadratic equation given coefficients
-- inputs: float type a, b, c, 
-- return: root1 root2
-------------------------------------------------------------------
procedure quadraticFormula(a, b, c : in Float; root1, root2, arg: out Float; true_false: out Boolean) is
begin

if a /= 0.0 then 
        arg := b**2 - 4.0 * a * c;
    if arg >= 0.0 then
        root1 := (-b + Sqrt(arg))/ (2.0 * a);
        root2 := (-b - Sqrt(arg))/ (2.0 * a);
        true_false := true;
    else
        root1 := 0.0;
        root2 := 0.0;
        true_false := false;

        Put_Line("");
        Put_Line("b^2 -4ac is not greater than or equal 0; negative!");
        Put_Line("");
    end if;
else
    root1 := 0.0;
    root2 := 0.0;
    true_false := false;
    Put_Line("");
    Put_Line("");
    Put_Line("a is zero!");
end if;
end quadraticFormula;

begin 

    Put_Line("Enter desired value for a, b, c");

    Put("a = ");
    Get(a);

    Put("b = ");
    Get(b);

    Put("c = ");
    Get(c);

---Germaine Hounakey helped me implement this function
quadraticFormula( a, b, c, root1, root2, arg, true_false);
if true_false = true then
    Put_Line("");
    Put("the first root is: ");

    Put(root1);
    Put_Line(""); --gives space
-----for second root-----   
    Put_Line("");
    Put("the first root is: ");

    Put(root2);

    Put_Line("");

end if;

end mainroots;

    


    




]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ cat mainroots.adbscript script.rubyruby quadraticformula.rbcd 06[KProjects/[4Pcs214Projects/06[Kruby quadraticformula.rb[6Pscript script.ruby[1Pcat mainroots.adb[Kcat mainroots.adbscript script.rubyruby quadraticformula.rbcd 06[KProjects/[4Pcs214[4Pexitruby quadraticformula.rb[1Pcat quadraticformula.rb[2Pruby quadraticformulacd 06[KProjects/            ./mainroots
Enter desired value for a, b, c
a = 1
b = 9
c = 10

the first root is: -1.29844E+00

the first root is: -7.70156E+00
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ./mainroots
Enter desired value for a, b, c
a = 0
b = 4
c = 2


a is zero!
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ./mainroots
Enter desired value for a, b, c
a = 2
b = 7
c = 2

the first root is: -3.13859E-01

the first root is: -3.18614E+00
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ./mainroots
Enter desired value for a, b, c
a = 5
b = 2
c = 6

b^2 -4ac is not greater than or equal 0; negative!

]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ei xit
exit

Script done on 2022-03-17 23:41:41-04:00 [COMMAND_EXIT_CODE="0"]
