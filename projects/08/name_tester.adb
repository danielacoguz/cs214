----------------------------------------------
--name_tester.adb "test-drives"  Name type
--Completed by: Daniela Contreras
--Worked with: Germaine Hounakey
--Date: 03/13/22
----------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;
procedure name_tester is
    NAME_SIZE : constant := 10;
    type Name is
    record
        myFirst, myMiddle, myLast : String(1..NAME_SIZE);
    end record;
    aName : Name;
    charsRead : Natural;
    first, middle, last : String(1..NAME_SIZE);
----------------------------------------------
-- Init initializes a Name variable -
-- Receive: theName, the Name variable; First, Middle and Last. 
-- Return: theName
----------------------------------------------
    procedure Init(TheName: out Name; First, Middle, Last : in String)
is
    begin
        TheName.MyFirst := First;
        TheName.MyMiddle := Middle;
        TheName.MyLast := Last;
end Init;
----------------------------------------------
-- getFirst(Name) retrieves Name.myFirst -
-- Receive: theName.-
-- Return: theName.myFirst. -
----------------------------------------------
function getFirst(TheName : in Name) return String is
begin
    return TheName.MyFirst;
end getFirst;
----------------------------------------------
-- getMiddle(Name) retrieves Name.myMiddle -
-- Receive: theName, a Name.  -
-- Return: theName.myMiddle. -
----------------------------------------------
function getMiddle(TheName : in Name) return String is
begin
    return TheName.MyMiddle;
end getMiddle;
----------------------------------------------
-- getFirst(Name) retrieves Name.myLast -
-- Receive: theName, a Name. -
-- Return: theName.myLast. -
----------------------------------------------
function getLast(TheName : in Name) return String is
begin
    return TheName.MyLast;
end getLast;
-----------------------------------------------
-- getFullName(Name) retrieves Name as a String -
-- Receive: theName, a Name. -
-- Return: a String representation of theName -
-----------------------------------------------
function getFullName(TheName : in Name) return String is
begin
    return TheName.MyFirst & " " & TheName.MyMiddle & " " &
TheName.MyLast;
    end getFullName;
--------------------------------------------------
-- Put(Name) displays a Name value. -
-- PRE: theName has been initialized. -
-- Receive: theName
-- Output: theName, to user-
--------------------------------------------------
    procedure Put(TheName: in Name) is
    begin

        Put( TheName.MyFirst & " " & TheName.MyMiddle & " " &

TheName.MyLast );
    end Put;
----------------------------------------------
-- setPos(aPos) overwrites a nameVal. -
-- Receive:a name at a given position -
----------------------------------------------
--for first name
procedure setFirst(TheName: out Name; aFirst: in String) is
begin
    TheName.myFirst := aFirst;
end setFirst;
--for middle name
procedure setMiddle(TheName: out Name; aMiddle: in String) is
begin
    TheName.myMiddle := aMiddle;
end setMiddle;
-- forst last name
procedure setLast(TheName: out Name; aLast: in String) is
begin
    TheName.myLast := aLast;
end setLast;
-----------------------------------------------------------------
-- lfmi() function returns the name in form -> LastFirstMiddleInitial -
-- Receive: theName
-- Return: the name in the LastFirstMiddleInitial format -
-----------------------------------------------------------------
function lfmi(TheName: in Name) return String is
begin
    return TheName.myLast & " " & TheName.myFirst & " "
        & TheName.myMiddle(TheName.myMiddle'First) & ".";
end lfmi;
-- reads name in this order
procedure readName(TheName: out Name) is
begin
    Put("Enter first name: ");
    Get_Line(first, charsRead);
    TheName.myFirst := first;
    Put("Enter middle name: ");
    Get_Line(middle, charsRead);

    TheName.myMiddle := middle;
    Put_Line("Enter last name: ");
    Get_Line(last, charsRead);
    TheName.myLast := last;

end readName;
begin
    Init(aName, "John      ", "Paul      ", "Jones     ");
    Put("Testing class NameTester... ");
    pragma Assert( getFirst(aName) = "John      ", "getFirst() failed");
    pragma Assert( getMiddle(aName) = "Paul      ", "getMiddle() failed");
    pragma Assert( getLast(aName) = "Jones     ", "getLast() failed");
    pragma Assert( getFullName(aName) = "John      Paul      Jones", "getFullName() failed");
    Put(" 0 ");
    setFirst(aName, "Luz       ");
    setMiddle(aName, "Daniela   ");
    setLast(aName, "Contreras ");
    pragma Assert( getFirst(aName) = "Luz       ", "getFirst() failed");
    pragma Assert( getMiddle(aName) = "Daniela   ", "getMiddle() failed");
    pragma Assert( getLast(aName) = "Contreras ", "getLast() failed");
    pragma Assert( getFullName(aName) = "Luz       Daniela   Contreras ", "getFullName() failed");
    pragma Assert( lfmi(aName) = "Contreras Luz       D.", "lfmi() failed");
    Put(" 1 ");
    Put("All tests passed!"); New_line;
    readName(aName);
    Put_Line(lfmi(aName));
end name_tester;