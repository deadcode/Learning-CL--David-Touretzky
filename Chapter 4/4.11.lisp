;; Exercise 4.11 from Touretzky
(defun FIRSTZERO (num-list)
  (cond ((= (first num-list) 0) 'first)
        ((= (second num-list) 0) 'second)
        ((= (third num-list) 0) 'third)
        (t 'none)))

(format t "~s = ~s~%" '(FIRSTZERO '(0 1 2)) (FIRSTZERO '(0 1 2)))
(format t "~s = ~s~%" '(FIRSTZERO '(1 0 2)) (FIRSTZERO '(1 0 2)))
(format t "~s = ~s~%" '(FIRSTZERO '(1 2 0)) (FIRSTZERO '(1 2 0)))
(format t "~s = ~s~%" '(FIRSTZERO '(1 2 3)) (FIRSTZERO '(1 2 3)))
(format t "~s = ~s~%" '(FIRSTZERO '(1 2 3 4)) (FIRSTZERO '(1 2 3 4)))
(format t "~s = ~s~%" '(FIRSTZERO 3 0 4) (FIRSTZERO 3 0 4))
