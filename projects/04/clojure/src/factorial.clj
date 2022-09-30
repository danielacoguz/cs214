;;;; factorial.clj the factorial or whatever n the user inputs.
;;;;
;;;; Input: n.
;;;; Precondition: n = 1. i >= 2
;;;; Output: factorial number of n taken by multiplying n-1 until n = 2
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date: 02/09/22
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; factorial() recursively generates the factorial numbers.
;;; Receive: n between 2 and n.
;;; Output: factorial number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;IGNORE--was trying to do another loop but will still like top keep (lines19-30)
;;Using Loop recursion
;; loop (indirect-recursion) version
;(defn fatorial2 [n]
;  (loop [i = 2]                           ; set i to start
;    (when (<= i n)                       ; if i <= stop:
;      (printf "Factorial of %f is %f\n" 
;      (*n (factorial (- n 1)))
;      (recur (+ i 1))                    ; recurse, i += step
;    )
;  )
;)
;; direct-recursive version
 (defn factorial [n] ;;function named factorial taking n as its argument
 (if (>= n 0) ;;assuring n is equal to or greater than 0. This works because 0! is 1 and 1! is 1 too
  (if ( < n 2)1 ;;just like in our given code, here we say that if n is less than 2
    ( * n (factorial (- n 1))) ;;n ! is n times (n-1)
    )
    -1
    )
 
 )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the factorial() function.
;;; Input: n.
;;; Output: n!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (println "To display factorial for n,")
 (print " enter n: ") (flush)
 (let
    [ n (double (read))
    ] 
    (println)
    (print n)(flush)
    (printf "\nFactorial = %f"(factorial n))
    (println) 
 )
)

