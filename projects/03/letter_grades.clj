;;;; letter_grades.clj is a driver for function letterGrades.
;;;;
;;;; Input: An integer letter average one of {100-0}.
;;;; Output: The letetr grade for that integer value (A, B ,C, D or F)
;;;;
;;;; Usage: clojure -m letter_grades
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date:02/02/22
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grades)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() returns the code for a given average integer.
;;; Receive: average, an integer.
;;; Precondition: average is between 
;;;   {100-0}.
;;; Return: the integer code corresponding to average.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; solution using the cond function
;; letterGrade turns a numerical grade into a letter grade
;; Input: Is the average which is between 100-0
;; output: we receive a letter grade (a, b, c, d, or F)
(defn letterGrade [average]
    (let [numerical_grade (int (/ average 10))]
        (cond
            (= numerical_grade 10) "A"
            (= numerical_grade 9) "A"
            (= numerical_grade 8) "B"
            (= numerical_grade 7) "C"
            (= numerical_grade 6) "D"
            :else "F"
        )
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your average grade: ") (flush)
 (let
    [ average (read) ]                ; read average (a integer)
    (println (letterGrade average) "\n")      ; display its code
 )
)