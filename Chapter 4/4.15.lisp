(defun GEQ (a b)
  (or (= a b)
      (> a b)))

(format t "~s = ~s~%" '(GEQ 3 3) (GEQ 3 3))
(format t "~s = ~s~%" '(GEQ 4 3) (GEQ 4 3))
(format t "~s = ~s~%" '(GEQ 2 3) (GEQ 2 3))
