;;;; Owl.clj provides an Owl "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date: 03/25/22
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;; bring in 'Bird' (to be used as 'superclass')
(load "Bird")
; Replace this line with one that loads module "Bird"


;; define 'Owl' as 'subclass' of Bird
(defrecord Owl [^Bird name] )

; Replace this line with one that declares a Owl record-type


;;; Owl constructors
;;; - default: no args
;;;   Postcondition: name == a default value. 
;;; - explicit1:
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of make-Owl()...
(defn make-Owl     
  ([]                (->Owl "Ann Onymous"))
  ([^String itsName] (->Owl itsName))
)


;;; method to retrieve a Owl's class
;;; Receive: this, a Owl object.
;;; Return: "Owl".
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of getClass() for a Owl...
(defmethod getClass Owl [ _ ]
  "Owl"
)
;;; method to retrieve a Owl's call
;;; Receive: this, a Owl object.
;;; Return: "Whoo-hoot!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Replace this line with a definition of getCall() for a Owl...
(defmethod getCall Owl [ _ ]
  "Whoo-hoot!"
)
