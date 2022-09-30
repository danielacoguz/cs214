;; temp_tester.clj is a test driver for Temp.clj
;; output: a set of temperature values between baseTemp and limitTemp
;;  Date: 03/21/22
;; name: Daniela Contreras
;; Worked with Germaine Hounakey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ns temp_tester)

(load-file "src/Temp.clj")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A simple driver to test our Temp functions.
;; Output: A table of temperatures as described above.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  ; Prompt user for base temperature
  (println "Enter Base Temperature ") (flush)
  (def baseTemp (readTemp))
 
  ; Prompt user for limit temperature
  (println "Enter Limit Temperature ") (flush)
  (def limitTemp (readTemp))

  ; Prompt user for increment value
  (print "Enter Step Value: ") (flush)
  (def stepValue (double (read)))

  ; Store original scale for reset each loop
  (def duplicateScale (getScale baseTemp))

  ; Loop to printout temperature table
  (while (or (isLessThan baseTemp limitTemp) (isEqual baseTemp limitTemp))
    (do
      ; Print Fahrenheit
      (print "Fahrenheit: ")
      (writeTemp (toF baseTemp))
      (print "\t") (flush)

      ; Print Celsius
      (print "Celsius: ")
      (writeTemp (toC baseTemp))
      (print "\t") (flush)

      ; Print Kelvin
      (print "Kelvin: ")
      (writeTemp (toK baseTemp))
      (print "\n") (flush)

      ; Increment temperature
      (def baseTemp (raiseTemp baseTemp stepValue))
    )
  )
)
