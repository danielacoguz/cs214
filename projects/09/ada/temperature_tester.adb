---temp_tester.adb is a test-driver fro Temp type
---Author: Daniela Contreras
-- Date: 03/20/22
----------------------------------------------------------------------------------------------------------------------------------------------
with Ada.Float_Text_IO, Ada.Text_IO, Ada.Characters.Handling, Temp_Package;
use Ada.Float_Text_IO, Ada.Text_IO, Ada.Characters.Handling, Temp_Package;

with Ada.Assertions;  use Ada.Assertions;

procedure Temperature_Tester is

  -- Creates three objects
  baseDuplicate, baseTemp, limitTemp : Temp_Package.Temp;
  stepValue : Float := 0.0;
  orig_scale : Character := 'C';

begin
  -- Ask user for base temperature
  Put_Line("Enter Base Temperature");
  readTemperature(baseTemp);
 
  -- Ask user for limit temperature
  Put_Line("Enter Limit Temperature");
  readTemperature(limitTemp);
 
  -- Ask user for increment value
  Put("Enter Step Value: ");
  Get(stepValue);

  --  Loop for temperature table
  while ( isLessThan(baseTemp, limitTemp) or isEqual(baseTemp, limitTemp)) loop
    -- Stores a copy of baseTemp in baseDuplicate for looping
    Init(baseDuplicate,getDegree(baseTemp),getScale(baseTemp));
   
    -- Prints Fahrenheit and stores copy
    Put("Fahrenheit: ");
    toF(baseDuplicate); writeTemp(baseDuplicate);
    Put("   ");

    -- Prints Celsius and stores copy
    Put("Celsius: ");
    toC(baseDuplicate); writeTemp(baseDuplicate);
    Put("   ");

    -- Prints Kelvin and stores copy
    Put("Kelvin: ");
    toK(baseDuplicate); writeTemp(baseDuplicate);
    New_Line;

    -- Increment temperature
    raiseTemp(baseTemp, stepValue);
  end loop;
end Temperature_Tester;