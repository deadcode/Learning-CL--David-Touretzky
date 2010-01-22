;; Exercise 4.9 from Touretzky

;; Flawed definition
(defun make-odd (x)
  (cond (t x)
        ((not (oddp x)) (+ x 1))))

(format t "Flawed definition~%")
(format t "~s = ~s~%" '(make-odd 3) (make-odd 3))
(format t "~s = ~s~%" '(make-odd 4) (make-odd 4))
(format t "~s = ~s~%" '(make-odd -2) (make-odd -2))

;; Corrected definition
(defun make-odd (x)
  (cond ((not (oddp x)) (+ x 1))
        (t x)))

(format t "~%Corrected definition~%")
(format t "~s = ~s~%" '(make-odd 3) (make-odd 3))
(format t "~s = ~s~%" '(make-odd 4) (make-odd 4))
(format t "~s = ~s~%" '(make-odd -2) (make-odd -2))
