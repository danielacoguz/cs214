-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Daniela Contreras
-- Date: 03/18/22
--------------------------------------------------------------

package Name_Package is
    type Name is private;
----------------------------------------------
    -- Init initializes a Name variable     
    --  Receive: Thename, the Name variable;          
    --          First, the first name;         
    --          Middle, the middle name;      
    --          Last, the last name.         
    -- Return: TheName, its fields set to First, 
    --               Middle, and Last.     
-----------------------------------------------
    procedure Init(TheName: out Name; First, Middle, Last : in String);
------------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        
  -- Receive: Thename, a Name.                      
  -- PRE: TheName has been initialized.            
  -- Return: TheName.myFirst.                     
  ----------------------------------------------
function getFirst(TheName: in Name) return String;
 -- getMiddle(Name) retrieves Name as a String 
    -- Receive: Thename, a Name.        
  -- PRE: Thename has been initialized.
  -- Return: Thename.myMiddle. 
function getMiddle( TheName: in Name) return String;
----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Thename, a Name.                    
  -- PRE: Thename has been initialized.            
  -- Return: Thename.myLast.                        
  ----------------------------------------------
  function getLast( Thename: in Name) return String;
----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Thename, a Name.                      -
  -- PRE: Thename has been initialized.             -
  -- Return: a String representation of Thename.    -
  ----------------------------------------------
  function getFullName( Thename: in Name) return String;
  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Thename has been initialized.             -
  -- Receive: Thename, a Name.                      -
  -- Output: Thename, to the screen.                -
  ----------------------------------------------
  procedure Put(Thename: in Name);
  NAME_SIZE : constant Integer := 8;
  private
  type Name is
    record
        MyFirst, MyMiddle, Mylast : String(1..NAME_SIZE);
        --MyFirst : String(1..NAME_SIZE);
        --MyMiddle : String(1..NAME_SIZE);
        --MyLast : String(1..NAME_SIZE);
    end record;

end Name_package;

