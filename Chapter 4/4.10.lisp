;; Exercise 4.10 from Touretzky
(defun CONSTRAIN (x minx maxx)
  (cond ((< x minx) minx)
        ((> x maxx) maxx)
        (t x)))

(format t "cond definition~%")
(format t "~s = ~s~%" '(CONSTRAIN 3 -50 50) (CONSTRAIN 3 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN 92 -50 50) (CONSTRAIN 92 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN -92 -50 50) (CONSTRAIN -92 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN -50 -50 50) (CONSTRAIN -50 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN 50 -50 50) (CONSTRAIN 50 -50 50))

(defun CONSTRAIN (x minx maxx)
  (if (< x minx) minx
    (if (> x maxx) maxx x)))

(format t "~%if definition~%")
(format t "~s = ~s~%" '(CONSTRAIN 3 -50 50) (CONSTRAIN 3 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN 92 -50 50) (CONSTRAIN 92 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN -92 -50 50) (CONSTRAIN -92 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN -50 -50 50) (CONSTRAIN -50 -50 50))
(format t "~s = ~s~%" '(CONSTRAIN 50 -50 50) (CONSTRAIN 50 -50 50))
