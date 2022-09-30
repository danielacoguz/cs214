;;;Receive:
;;;Started by: Daniela Contreras
;;;We will be doing Functional Programming Practice
;;;Date: 02/14/22
;;;Output: 
;;; Worked with Germaine Hounakey gah23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns clojure)                          

(defn my-reverse [list] ;;reverse function that takes list and uses into function
    (into () list)

)
(defn super-reverse [list]
    (my-reverse (map ( fn [x] (if (list? x) (super-reverse x) x)) list))

)
(defn member? [input ylist]
    (if (empty? ylist) false ;;if the list is empty we return false
;; if the first item in the list is the input we need return true

    (if (= input (first ylist)) true (member? input (rest ylist)))
    )
;; recursion happens when we call the function member
;; rest is a function that cuts the first item in the ylist and checks to see 
;; if it's equal to the desired/expected input
)

;;return (take n ( iterate inc i ))
;;start value is i{so you cut the list? within the list then count n elements
;;(i (rest list))
;;return i + n elments 
;;(defn subsequence [list i n]
;;    (if (empty list) nil
;;        (loop [x i] ;;loop function has two parameters i is starting value and x is iterator
;;              (when (< x (+ n i ))
;;                (println (get list x)) ;; gets the element at index x from the list
;;                (recur (+ i 1))
;;            )
;;        )
;;    )
;)

(defn subsequence [list i n]
    (if (empty? list) nil ;; if the list is empty return null
        (if (<= i (+ n 1)) (cons (nth list i) (subsequence list (inc i) n ))) 
    )
;; cons prepends ith element to list and i is incremented until it reaches n
;; nth returns value at i from the list (takes two argument)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Input:
;;; Output:
;;; Main Idea: We 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
(println (my-reverse '(a b (c d) (e (f g)))))
(println (super-reverse '(a b (c d) (e (f g)))))
(println (member? '(1 2) '((1 2) 3 (4 (5 6)))))
(println (member? 3 '((1 2) 3 (4 (5 6)))))
(println (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))))
(println (member? 1 '((1 2) 3 (4 (5 6)))))
(println (member? 2 '((1 2) 3 (4 (5 6)))))
(println (member? 4 '((1 2) 3 (4 (5 6)))))
(println (subsequence '(1 2 3 4 5 6 7) 2 4))
(println (subsequence '(1 2 (3 4) (5 (6 7))) 1 2))
)
