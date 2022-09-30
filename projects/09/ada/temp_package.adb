--------------------------------------------------------------------------------------------------------------------------------------------------
--- Author: Daniela Contreras
-- Date: 03/20/22
--- team_package.adb defines operations for the Temp type
-------------------------------------------------------------------------------------------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Characters.Handling;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Characters.Handling;

package body Temp_Package is

  -- Initialize mid variables:
  Tmp1_Copy, Tmp2_Copy: Temp;
  User_Degree : Float := 0.0;
  User_Scale, Empty : Character;

  -------------------------------------------------------------------------
  -- Init initializes  Temp variable
  -- Receive: Tmp, the Temp variable;
  --          Degree, the degrees value;
  --          Scale (fahrenheit, celcius or kelvin);
  -- Return: Tmp, set to degree and scale.
  -------------------------------------------------------------------------
  procedure Init(Tmp: out Temp; Degree: in Float; Scale: in Character ) is
  begin
    if isValid(Degree, Scale) then
       Tmp.MyDegree := Degree;
       Tmp.MyScale := Scale;
    end if;
  end Init;

  -------------------------------------------------------------------------
  -- getDegree(Tmp) retrieves Tmp.MyDegree
  -- Receive: Tmp, a Temp.
  -- Return: Tmp.MyDegree.
  -------------------------------------------------------------------------
  function getDegree(Tmp: in Temp) return Float is
  begin
    return Tmp.MyDegree;
  end getDegree;

  -------------------------------------------------------------------------
  -- getScale(Tmp) retrieves Tmp.MyScale
  -- Receive: Tmp, a Temp.
  -------------------------------------------------------------------------
  function getScale(Tmp: in Temp) return Character is
  begin
     return Tmp.MyScale;
  end getScale;

  -------------------------------------------------------------------------
  -- toF(Temp) converts temperature to Fahrenheit
  -- Receive: Tmp, a Temp.
  -------------------------------------------------------------------------
  procedure toF(Tmp: out Temp) is
  begin
     if (To_Upper(getScale(Tmp)) = 'C') then
        Tmp.MyDegree := 1.8*Tmp.MyDegree+32.0;
     elsif (To_Upper(getScale(Tmp)) = 'K') then
        Tmp.MyDegree := 1.8*(Tmp.MyDegree-273.15)+32.0;
     end if;
     Tmp.myScale := 'F';
  end toF;

  -------------------------------------------------------------------------
  -- toC(Temp) converts temperature to Celsius
  -- Receive: Tmp, a Temp.
  -------------------------------------------------------------------------
  procedure toC(Tmp: out Temp) is
  begin
     if (To_Upper(getScale(Tmp)) = 'F') then
        Tmp.MyDegree := (5.0/9.0)*(Tmp.MyDegree-32.0);
     elsif (To_Upper(getScale(Tmp)) = 'K') then
        Tmp.MyDegree := Tmp.MyDegree-273.15;
     end if;
     Tmp.myScale := 'C';
  end toC;

  -------------------------------------------------------------------------
  -- toK(Temp) converts temperature to Kelvin
  -- Receive: Tmp, a Temp.
  -------------------------------------------------------------------------
  procedure toK(Tmp: out Temp) is
  begin
     if (To_Upper(getScale(Tmp)) = 'F') then
        Tmp.MyDegree := (5.0/9.0)*(Tmp.MyDegree-32.0)+273.15;
     elsif (To_Upper(getScale(Tmp)) = 'C') then
        Tmp.MyDegree := Tmp.MyDegree+273.15;
     end if;
     Tmp.myScale := 'K';
  end toK;

  -------------------------------------------------------------------------
  -- raiseTemp(Tmp) increases the value of Degree
  -- Receive: Tmp, a Temp.
  -- PRE: Tmp has been initialized.
  -------------------------------------------------------------------------
  procedure raiseTemp(Tmp: out Temp; Degree: in Float) is
  begin
     if isValid(Tmp.MyDegree+Degree, Tmp.MyScale) then
        Tmp.MyDegree := Tmp.MyDegree+Degree;
     end if;
  end raiseTemp;

  -------------------------------------------------------------------------
  -- lowerTemp(Tmp) decreases the value of Degree
  -- Receive: Tmp, a Temp.
  -- PRE: Tmp has been initialized.
  -------------------------------------------------------------------------
  procedure lowerTemp(Tmp: out Temp; Degree: in Float) is
  begin
     if isValid(Tmp.MyDegree-Degree, Tmp.MyScale) then
        Tmp.MyDegree := Tmp.MyDegree-Degree;
     end if;
  end lowerTemp;

  -------------------------------------------------------------------------
  -- isEqual(Tmp1, Tmp2) Checks '=' Degree relation between any Scale
  -- Receive: Degree, a Float; Scale, a Character
  -- Return: True if valid and False if otherwise.
  -------------------------------------------------------------------------
  function isEqual(Tmp1: in Temp; Tmp2: in Temp) return Boolean is
  begin
    Init(Tmp1_Copy, getDegree(Tmp1), getScale(Tmp1));
    Init(Tmp2_Copy, getDegree(Tmp2), getScale(Tmp2));
    toK(Tmp1_Copy);
    toK(Tmp2_Copy);
    return Tmp1_Copy.MyDegree = Tmp2_Copy.MyDegree;
  end isEqual;

  -------------------------------------------------------------------------
  -- isLessThan(Tmp1, Tmp2) Checks '<' degree relation between any scale
  -- Receive: Degree, a Float; Scale, a Character
  -- Return: True if valid and False if otherwise.
  -------------------------------------------------------------------------
  function isLessThan(Tmp1: in Temp; Tmp2: in Temp) return Boolean is
  begin
    Init(Tmp1_Copy, getDegree(Tmp1), getScale(Tmp1));
    Init(Tmp2_Copy, getDegree(Tmp2), getScale(Tmp2));
    toK(Tmp1_Copy);
    toK(Tmp2_Copy);
    return Tmp1_Copy.MyDegree < Tmp2_Copy.MyDegree;
  end isLessThan;

  -------------------------------------------------------------------------
  -- isValid(Degree, Scale) Checks for valid Degree and Scale
  -- Receive: Degree, a Float; Scale, a Character
  -- Return: True if valid and False if otherwise.
  -------------------------------------------------------------------------
  function isValid(Degree: in Float; Scale: in Character) return Boolean is
  begin
     return (    (To_Upper(Scale) = 'K' and Degree >=    0.00)
              or (To_Upper(Scale) = 'C' and Degree >= -273.15)
     or (To_Upper(Scale) = 'F' and Degree >= -459.67));
  end isValid;

  -------------------------------------------------------------------------
  -- readTemperature(Tmp) reads in the Degree and Scale from the user
  -- Receive: Tmp, a Temp.
  -- PRE: Tmp has been initialized.
  -------------------------------------------------------------------------
  procedure readTemperature(Tmp: out Temp) is
  begin
     Put("Enter Degrees and Scale: ");
     Get(User_Degree);
     Get(Empty);
     Get(User_Scale);
     if isValid(User_Degree, User_Scale) then
        Tmp.MyDegree := User_Degree;
        Tmp.MyScale  := User_Scale;
     end if;
  end readTemperature;

  -------------------------------------------------------------------------
  -- writeTemp(Tmp) prints Degree and Scale
  -- Receive: Tmp, a Temp.
  -- PRE: Tmp has been initialized.
  -------------------------------------------------------------------------
  procedure writeTemp(Tmp: in Temp) is
  begin
     Put(Float'Image(Tmp.MyDegree) & " " & Tmp.MyScale);
  end writeTemp;

end Temp_Package;