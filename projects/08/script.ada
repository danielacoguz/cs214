Script started on 2022-03-30 19:37:42-04:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="254" LINES="12"]
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.adb
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
end name_tester;]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kcat NameTester.rb[1@ruby[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kcat name_tester.adb[Kcat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kjava NameTesterc -deprecation NameTester.java[15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Clojure -m name_tester .clj  [K[9P./[C[C[C[C[C[C[C[C[C[C[C[Cgnatmake name_tester[6P./name_tester gnatmake name_tester
gnatmake: "name_tester" up to date.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ gnatmake name_tester[Kgnatmake name_tester[1Pcat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kjava NameTesterc -deprecation NameTester.java[15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Clojure -m name_tester .clj  [K[9P./[C[C[C[C[C[C[C[C[C[C[C[C[K
Testing class NameTester...  0  1 All tests passed!
Enter first name: luz
Enter middle name: daniela
Enter last name: 
contreras 
contreras  luz        d.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: John
Enter middle name: aul   Paul  
Enter last name: 
John     n      
John       John       P.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: John  
Enter middle name: Paul
Enter last name: 
Jones     
Jones      John       P.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: kelly
Enter middle name: Robin
-
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
end name_tester;]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kcat NameTester.rb[1@ruby[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kcat name_tester.adb[Kcat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kjava NameTesterc -deprecation NameTester.java[15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Clojure -m name_tester .clj  [K[9P./[C[C[C[C[C[C[C[C[C[C[C[Cgnatmake name_tester[6P./name_tester gnatmake name_tester
gnatmake: "name_tester" up to date.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ gnatmake name_tester[Kgnatmake name_tester[1Pcat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kjava NameTesterc -deprecation NameTester.java[15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Clojure -m name_tester .clj  [K[9P./[C[C[C[C[C[C[C[C[C[C[C[C[K
Testing class NameTester...  0  1 All tests passed!
Enter first name: luz
Enter middle name: daniela
Enter last name: 
contreras 
contreras  luz        d.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: John
Enter middle name: aul   Paul  
Enter last name: 
John     n      
John       John       P.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: John  
Enter middle name: Paul
Enter last name: 
Jones     
Jones      John       P.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: kelly
Enter middle name: Robin
Enter last name: 
u Guzan    uzman    
Guzman     kelly      R.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ./name_tester
Testing class NameTester...  0  1 All tests passed!
Enter first name: Daniel
Enter middle name: delfino
Enter last name: 
Conte reras 
Contreras  Daniel     d.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ exit
exit
Script done, file is script.ada
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ script scrip.clj[K[Klojure
Script started, file is scrip.clojure
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.cj
cat: name_tester.cj: No such file or directory
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ script script.clojure
Script started, file is script.clojure
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.clj
;;;; name_tester.clj creates and tests a clojure Name type.
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date: 3/13/2022
;;;; Worked with: gah23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns name_tester) 

;;; define a Clojure record named Name 

(defrecord Name [firstName middleName lastName])
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs Name from 3 strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: firstN middleN lastN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Name [first middle last]
	(->Name first middle last)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name 
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getFirst [^Name aName]
	(:firstName aName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name
;;; Return: the middleName string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getMiddle [^Name aName]
	(:middleName aName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name
;;; Return: the lastName string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getLast [^Name aName]
	(:lastName aName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in Fist-Middle-Last order. 
;;; Return: firstName, middleName, lastName,
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn toString[^Name aName]
(str (getFirst aName) " " (getMiddle aName) " " (getLast aName))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn printName [^Name aName]
  (print (toString aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mutator functions changes first, middle, and last names                          
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; new first name
(defn setFirst [aName newFirst]
  (->Name newFirst (:middleName aName) (:lastName aName))
)
;;new middle
(defn setMiddle [aName newMiddle]
  (->Name  (:firstName aName) newMiddle (:lastName aName))
)
;;new Last
(defn setLast [aName newLast]
  (->Name (:firstName aName) (:middleName aName) newLast)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() displays initials of a name
;;; Output: initials of name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lfmi [aName]
  (let [first (getFirst aName) 
        middle (subs (getMiddle aName) 0 1)
        last (getLast aName)
      ]
    (str last ", " first " " middle ".")
  )

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName assigns a new name
;;; Output: sets the name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readName []
  (println "\nEnter the first, middle, and last, names: ") (flush)


  (->Name (read-line) (read-line) (read-line)) 
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;driver to test our Name functions. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                          
      name1 (make-Name "John" "Paul" "Jones")  
      name2 (->Name "Jane" "Penelope" "Jones") 
                                               
      name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})
    ]
    ;;tests John Paul Jones
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
  ;;tests second name
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;tests third name
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)

    
    (let [  testName (->Name "Jinx" "Joy" "Jones")
            testName (setFirst testName "Luz")
            testName (setMiddle testName "Daniela")
            testName (setLast testName "Contreras")
          ]
      
      (println)
      (printName testName) (println)
      (assert (= (getFirst testName) "Luz") "setFirst() failed")
      (assert (= (getMiddle testName) "Daniela") "setMiddle() failed")
      (assert (= (getLast testName) "Contreras") "setLast() failed")
      
      (assert (= (lfmi testName) "Contreras, Luz D.") "lfmi() failed")
    )
;;user input
    (let [ testName2 (readName) ]

      (print "\nEntered Name: ")
      (printName testName2)
      
      (print "\n")
      (print (lfmi testName2))
    )




    (println "\nAll tests passed!\n")
  )
)]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ clojure -m name_tester

#name_tester.Name{:firstName John, :middleName Paul, :lastName Jones}
John Paul Jones

#name_tester.Name{:firstName Jane, :middleName Penelope, :lastName Jones}
Jane Penelope Jones

#name_tester.Name{:firstName Jinx, :middleName Joy, :lastName Jones}
Jinx Joy Jones

Luz Daniela Contreras

Enter the first, middle, and last, names: 
Luz Daniela Contreras
^C]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ clojure -m name_tester

#name_tester.Name{:firstName John, :middleName Paul, :lastName Jones}
John Paul Jones

#name_tester.Name{:firstName Jane, :middleName Penelope, :lastName Jones}
Jane Penelope Jones

#name_tester.Name{:firstName Jinx, :middleName Joy, :lastName Jones}
Jinx Joy Jones

Luz Daniela Contreras

Enter the first, middle, and last, names: 
luz
daniela
contreras

Entered Name: luz daniela contreras
contreras, luz d.
All tests passed!

]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ clojure -m name_tester[3Pat name_tester.cljexit[K./name_testergnatmake name_tester[1Pcat name_tester.adbexit[Kruby NameTester.rb[1Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cexit[K[K[K[K[Kscript.[K script.clojure
Script started, file is script.clojure
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.clj
;;;; name_tester.clj creates and tests a clojure Name type.
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date: 3/13/2022
;;;; Worked with: gah23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns name_tester) 

;;; define a Clojure record named Name 

(defrecord Name [firstName middleName lastName])
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs Name from 3 strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: firstN middleN lastN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Name [first middle last]
	(->Name first middle last)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name 
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getFirst [^Name aName]
	(:firstName aName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name
;;; Return: the middleName string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getMiddle [^Name aName]
	(:middleName aName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name
;;; Return: the lastName string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getLast [^Name aName]
	(:lastName aName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in Fist-Middle-Last order. 
;;; Return: firstName, middleName, lastName,
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn toString[^Name aName]
(str (getFirst aName) " " (getMiddle aName) " " (getLast aName))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn printName [^Name aName]
  (print (toString aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mutator functions changes first, middle, and last names                          
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; new first name
(defn setFirst [aName newFirst]
  (->Name newFirst (:middleName aName) (:lastName aName))
)
;;new middle
(defn setMiddle [aName newMiddle]
  (->Name  (:firstName aName) newMiddle (:lastName aName))
)
;;new Last
(defn setLast [aName newLast]
  (->Name (:firstName aName) (:middleName aName) newLast)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() displays initials of a name
;;; Output: initials of name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lfmi [aName]
  (let [first (getFirst aName) 
        middle (subs (getMiddle aName) 0 1)
        last (getLast aName)
      ]
    (str last ", " first " " middle ".")
  )

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName assigns a new name
;;; Output: sets the name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readName []
  (println "\nEnter the first, middle, and last, names: ") (flush)


  (->Name (read-line) (read-line) (read-line)) 
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;driver to test our Name functions. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                          
      name1 (make-Name "John" "Paul" "Jones")  
      name2 (->Name "Jane" "Penelope" "Jones") 
                                               
      name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})
    ]
    ;;tests John Paul Jones
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
  ;;tests second name
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;tests third name
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)

    
    (let [  testName (->Name "Jinx" "Joy" "Jones")
            testName (setFirst testName "Luz")
            testName (setMiddle testName "Daniela")
            testName (setLast testName "Contreras")
          ]
      
      (println)
      (printName testName) (println)
      (assert (= (getFirst testName) "Luz") "setFirst() failed")
      (assert (= (getMiddle testName) "Daniela") "setMiddle() failed")
      (assert (= (getLast testName) "Contreras") "setLast() failed")
      
      (assert (= (lfmi testName) "Contreras, Luz D.") "lfmi() failed")
    )
;;user input
    (let [ testName2 (readName) ]

      (print "\nEntered Name: ")
      (printName testName2)
      
      (print "\n")
      (print (lfmi testName2))
    )




    (println "\nAll tests passed!\n")
  )
)]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ lojure [K[K[K[K[K[K[Kclojure -m name_teste
Execution error (FileNotFoundException) at clojure.main/main (main.java:40).
Could not locate name_teste__init.class, name_teste.clj or name_teste.cljc on classpath. Please check that namespaces with dashes use underscores in the Clojure file name.

Full report at:
/tmp/clojure-13197668046579560778.edn
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ script script.clojure
Script started, file is script.clojure
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat name_tester.clj
;;;; name_tester.clj creates and tests a clojure Name type.
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date: 3/13/2022
;;;; Worked with: gah23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns name_tester) 

;;; define a Clojure record named Name 

(defrecord Name [firstName middleName lastName])
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs Name from 3 strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: firstN middleN lastN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Name [first middle last]
	(->Name first middle last)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name 
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getFirst [^Name aName]
	(:firstName aName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name
;;; Return: the middleName string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getMiddle [^Name aName]
	(:middleName aName)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name
;;; Return: the lastName string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getLast [^Name aName]
	(:lastName aName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in Fist-Middle-Last order. 
;;; Return: firstName, middleName, lastName,
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn toString[^Name aName]
(str (getFirst aName) " " (getMiddle aName) " " (getLast aName))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn printName [^Name aName]
  (print (toString aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mutator functions changes first, middle, and last names                          
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; new first name
(defn setFirst [aName newFirst]
  (->Name newFirst (:middleName aName) (:lastName aName))
)
;;new middle
(defn setMiddle [aName newMiddle]
  (->Name  (:firstName aName) newMiddle (:lastName aName))
)
;;new Last
(defn setLast [aName newLast]
  (->Name (:firstName aName) (:middleName aName) newLast)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() displays initials of a name
;;; Output: initials of name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lfmi [aName]
  (let [first (getFirst aName) 
        middle (subs (getMiddle aName) 0 1)
        last (getLast aName)
      ]
    (str last ", " first " " middle ".")
  )

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName