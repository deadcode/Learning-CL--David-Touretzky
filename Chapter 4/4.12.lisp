;; Exercise 4.12 from Touretzky
(defun CYCLE (n)
  (if (>= n 99) 1 (+ n 1)))

(format t "~s = ~s~%" '(CYCLE 1) (CYCLE 1))
(format t "~s = ~s~%" '(CYCLE 50) (CYCLE 50))
(format t "~s = ~s~%" '(CYCLE 98) (CYCLE 98))
(format t "~s = ~s~%" '(CYCLE 99) (CYCLE 99))
