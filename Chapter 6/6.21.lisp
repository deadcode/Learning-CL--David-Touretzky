(defun MY-SUBSET-P (x y)
  (not (set-difference x y)))

(format t "~s = ~s~%" '(MY-SUBSET-P '(a i) '(a e i o u)) (MY-SUBSET-P '(a i) '(a e i o u)))
(format t "~s = ~s~%" '(MY-SUBSET-P '(a x) '(a e i o u)) (MY-SUBSET-P '(a x) '(a e i o u)))
