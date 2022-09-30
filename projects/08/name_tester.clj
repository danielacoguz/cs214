;;;; name_tester.clj creates and tests a clojure Name type.
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date: 3/13/2022
;;;; Worked with: gah23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
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
)