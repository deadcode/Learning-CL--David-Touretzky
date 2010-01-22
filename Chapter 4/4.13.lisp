;; Exercise 4.13 from Touretzky
(defun HOWCOMPUTE (a b c)
  (cond ((= (+ a b) c) 'sum-of)
        ((= (- a b) c) 'diff-of)
        ((= (* a b) c) 'product-of)
        ((= (/ a b) c) 'ratio-of)
        (t 'beats-me)))

(format t "~s = ~s~%" '(HOWCOMPUTE 3 4 7) (HOWCOMPUTE 3 4 7))
(format t "~s = ~s~%" '(HOWCOMPUTE 3 4 12) (HOWCOMPUTE 3 4 12))
(format t "~s = ~s~%" '(HOWCOMPUTE 3 4 -1) (HOWCOMPUTE 3 4 -1))
(format t "~s = ~s~%" '(HOWCOMPUTE 3 4 0.75) (HOWCOMPUTE 3 4 0.75))
(format t "~s = ~s~%" '(HOWCOMPUTE 3 4 91) (HOWCOMPUTE 3 4 91))
