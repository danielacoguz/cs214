;; Temp.clj is a module for Temp
;; name: Daniela Contreras
;; Worked with Germaine Hounakey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Create a record/struct type named Temp
(defrecord Temp [myDegrees myScale])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; make-Temp constructs a Temp object from a double and char.
;; Receive: degrees, a double; scale, a char
;; Return: the Temp (degrees scale).
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Temp [degrees scale]
  (->Temp degrees scale)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; isValid checks temperature's validity
;; Receive: degree, a double; scale, a char
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn isValid [degree scale]
  (if (or (and (= scale (or "K" "k")) (>= degree 0.0)    )
          (and (= scale (or "C" "c")) (>= degree -273.15))
          (and (= scale (or "F" "f")) (>= degree -459.67)))
    true
    false
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getDegrees extracts the degrees of a Temp object.
;; Receive: aTemp, a Temp.
;; Return: myDegrees double in aTemp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getDegrees [aTemp]
  (:myDegrees aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getScale extracts the scale of a Temp object.
;; Receive: aTemp, a Temp.
;; Return: myScale char in aTemp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getScale [aTemp]
  (:myScale aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; writeTemp prints temperature
;; Receive: aTemp, a Temp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn writeTemp [aTemp]
  (print (:myDegrees aTemp) (:myScale aTemp))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; readTemp prints temperature
;; Receive: aTemp, a Temp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readTemp []
  (print "Enter Degrees and Scale: ") (flush)
  (def newDegree (double (read)))
  (def newScale (str (.charAt (str (read)) 0)))
  (if (isValid newDegree newScale)
    (make-Temp newDegree newScale)
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toF converts Temp to Fahrenheit
;; Receive: aTemp, a Temp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toF [aTemp]
  (def newDegree (:myDegrees aTemp))
  (if (= (:myScale aTemp) (or "C" "c"))
    (def newDegree (+ (* (/ 9 5) (:myDegrees aTemp)) 32)))
  (if (= (:myScale aTemp) (or "K" "k"))
      (def newDegree (+ (* (/ 9 5) (- (:myDegrees aTemp) 273.15)) 32)))
  (make-Temp newDegree "F")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toC converts Temp to Celsius
;; Receive: aTemp, a Temp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toC [aTemp]
  (def newDegree (:myDegrees aTemp))
  (if (= (:myScale aTemp) (or "F" "f"))
    (def newDegree (- (:myDegrees aTemp) 459.66999999999996)))
  (if (= (:myScale aTemp) (or "K" "k"))
    (def newDegree (- (:myDegrees aTemp) 273.15)))
  (make-Temp newDegree "C")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toK converts Temp to Kelvin
;; Receive: aTemp, a Temp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toK [aTemp]
  (def newDegree (:myDegrees aTemp))
  (if (= (:myScale aTemp) (or "F" "f"))
    (def newDegree (+ (* (/ 5 9) (- (:myDegrees aTemp) 32)) 273.15)))
  (if (= (:myScale aTemp) (or "C" "c"))
    (def newDegree (+ (:myDegrees aTemp) 273.15)))
  (make-Temp newDegree "K")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; isEqual checks temperature's equality scales
;; Receive: Left, a Temp; Right, a Temp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn isEqual [Left Right]
  (def LeftCopy (toK Left))
  (def RightCopy (toK Right))
  (= (:myDegrees LeftCopy) (:myDegrees (toK RightCopy)))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; isLessThan checks temperature's lessThan across scales
;; Receive: Left, a Temp; Right, a Temp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn isLessThan [Left Right]
  (< (:myDegrees (toF Left)) (:myDegrees (toF Right)))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; raiseTemp increases temperature
;; Receive: aTemp, a Temp; degree, a double
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn raiseTemp [aTemp degree]
  (if (isValid (+ (:myDegrees aTemp) degree) (:myScale aTemp))
    (make-Temp (+ (:myDegrees aTemp) degree) (:myScale aTemp))
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lowerTemp decreases temperature
;; Receive: aTemp, a Temp; degree, a double
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lowerTemp [aTemp degree]
  (if (isValid (- (:myDegrees aTemp) degree) (:myScale aTemp))
    (make-Temp (- (:myDegrees aTemp) degree) (:myScale aTemp))
  )
)