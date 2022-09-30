;;;; circle_area.clj calculates the area of a circle.
;;;;
;;;; Input: The radius of a circle.
;;;; Output: The area of that circle.
;;;;
;;;; Usage: clojure -m circle_area
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Daniela Contreras
;;;; Date:01/17/22
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangleArea) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectangleArea() computes the area of a rectangle.
;;; Receive: its height and width
;;; Precondition: height and width are > 0
;;; Return: the area of the corresponding rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn rectangleArea [height, width]
  ( * height width) 
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the height and width of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (print   " enter its width: ") (flush)
  (let
    [ width (read) ]

    (assert (>= width 0) "-main: heights must be positive")
     (print   " enter its height: ") (flush) 
    (let
      [ height (read) ]

      (assert (>= height 0) "-main: heights must be positive")
      (printf "\nThe area is %f\n\n" (float(rectangleArea height, width)))
     )
  )
)