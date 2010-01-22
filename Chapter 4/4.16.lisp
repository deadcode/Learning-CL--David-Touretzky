(defun f-x (x)
  (cond ((and (> x 0) (oddp x)) (* x x))
        ((and (< x 0) (oddp x)) (* 2 x))
        (t (/ x 2))))

(format t "~s = ~s~%" '(f-x 5) (f-x 5))
(format t "~s = ~s~%" '(f-x -5) (f-x -5))
(format t "~s = ~s~%" '(f-x 4) (f-x 4))
(format t "~s = ~s~%" '(f-x 0) (f-x 0))
