Used!

((fn [x y z] (max (Math/abs x) (Math/abs y) (Math/abs z))) -2 -4 7 )
((fn [x y z] (max (Math/abs x) (Math/abs y) (Math/abs z))) 3 21 -7 )
((fn [x y z] (max (Math/abs x) (Math/abs y) (Math/abs z))) 8 -10 -15)

1b
((fn [x y z] (+ x y z)) 3 4 5)
((fn [x] (nil? x)) 6 )
((fn [] 17.2))

Part 2
(#(+ (* %1 %1) (* %2 %2)) 3 4)


(#(+ (* %1 %1) (* %2 %2)))
(def sum2Squares (#(+ (* %1 %1) (* %2 %2))))
   (def sum2Squares #(+ (* %1 %1) (* %2 %2)))
(sum2Squares 3 4)

2a
(def squareSquare # (* % % % %) )
(squareSquare 2)
(squareSquare -3)
(squareSquare -2)
(squareSquare 5)



