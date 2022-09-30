;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; roots.clj computes root1 and root2 of quadratic formula
;;;input: a, b ,c coefficients for formula
;;output: root1, root2, zero, or a is negative if it applies
;;Name: Daniela Contreras
;;Date: March 2022
;;Helped/Worked with Germaine Hounakey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ns roots) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Roots() does the computation/calculation part of the quadratic formula
;;inputs: a, b, c, double types
;;outputs: roots 1 & 2, text saying invalid and reasoning
;;reasoning to be invalid: a is zero or root is negative
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn roots [a b c]
    (if (= a 0) (print "\ta is zero!\n"))
    (if (not= a 0)
        (let [arg (- (* b b) (* (* 4 a) c))]
        (if (< arg 0) (print "can't be square rooted since b^2 -4ac is negative\n"))
            (if (>= arg 0)
                (let [
                root1 (/ (+ (* b -1)(Math/sqrt arg)) (* 2 a))
                root2 (/ (- (* b -1)(Math/sqrt arg)) (* 2 a))
                ]
                (vector root1 root2)
                )
            )
        )
    )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;main function
;;input: have user input desired values for a b and c
;;output: both roots or invalid texts/messages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main[]
    (print "To obtain roots of quadratic function we must enter value of variables: ") (flush)
   
    (print "\n\ta = ") (flush)
    (let [ a (read) ]
        (print "\tb = ") (flush)
        (let [ b (read) ] 
            (print "\tc = ") (flush)
                (let [c (read) ] 
                (let
                    [
                        list (roots a b c)
                        root1 (get list 0)
                        root2 (get list 1)
                    ]
                    (if (and (not= root1 nil) (not= root2 nil))
                        (print "\n the first root is: " root1
                        "\t the second root is : " root2 "\n"
                        )
                        (print "")
                    )

                )
            )
        )
    )
)