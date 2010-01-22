;; Exercise 4.4 from Touretzky
(defun ORDERED (a b)
  (if (<= a b) (list a b) (list b a)))
(format t "(ORDERED 1 2) is ~s~&" (ORDERED 1 2))
(format t "(ORDERED 4 3) is ~s~&" (ORDERED 4 3))
(format t "(ORDERED 5 5) is ~s~&" (ORDERED 5 5))
