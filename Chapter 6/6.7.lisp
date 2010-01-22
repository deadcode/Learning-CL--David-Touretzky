(defun NEXT-TO-LAST (x)
  (second (reverse x)))

(format t "~s = ~s~%" '(NEXT-TO-LAST '(a b c d e)) (NEXT-TO-LAST '(a b c d e)))
(format t "~s = ~s~%" '(NEXT-TO-LAST '(a b (c d) e)) (NEXT-TO-LAST '(a b (c d) e)))

(defun NEXT-TO-LAST (x)
  (nth (- (length x) 2) x))

(format t "~s = ~s~%" '(NEXT-TO-LAST '(a b c d e)) (NEXT-TO-LAST '(a b c d e)))
(format t "~s = ~s~%" '(NEXT-TO-LAST '(a b (c d) e)) (NEXT-TO-LAST '(a b (c d) e)))
