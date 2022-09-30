;; array.clj tests functions printArray and readArray
;;Author: Daniela Contreras
;;Date: 03/15/22
;; User Inputs: values in array
;; User output: Values in array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ns array)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;readArray() fills array with double values
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readArray [anArray i size]
    (if (< i size)
        (do
        (aset anArray i (double (read)))
        (readArray anArray (+ i 1) size)
        )
    )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printArray() displays desired values
;;receive: anArray : anArray now holding doubles
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printArray [anArray size]
    (print "Array: ")
    (if (not= size 0)
        (println (seq anArray))
        (println "Nothing here!")
    )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;main function to display values and test printArray and readArray
;;Outputs the items of array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main[]
    (print "Type here desired size for your array: \n") (flush)
    (def size (int (read)))
    (def anArray (to-array (repeat size 0)))
    (if (> size 0)
        (do (print " Enter values: \n") (flush))
    )
    (readArray anArray 0 size)
    (printArray anArray size)
)
