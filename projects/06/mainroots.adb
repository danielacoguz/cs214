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

    


    




