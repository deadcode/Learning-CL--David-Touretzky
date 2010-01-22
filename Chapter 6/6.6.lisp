(format t "~s = ~s~%" '(LAST '(a b c d e)) (LAST '(a b c d e)))
(format t "~s = ~s~%" '(LAST '(a b c (d e))) (LAST '(a b c (d e))))

;;; Using last to return last element of list instead of the last cons
(defun LAST-ELEMENT (x)
  (first (last x)))

(format t "~s = ~s~%" '(LAST-ELEMENT '(a b c d e)) (LAST-ELEMENT '(a b c d e)))
(format t "~s = ~s~%" '(LAST-ELEMENT '(a b c (d e))) (LAST-ELEMENT '(a b c (d e))))

;;; Using reverse to return last element of list instead of the last cons
(defun LAST-ELEMENT (x)
  (first (reverse x)))

(format t "~s = ~s~%" '(LAST-ELEMENT '(a b c d e)) (LAST-ELEMENT '(a b c d e)))
(format t "~s = ~s~%" '(LAST-ELEMENT '(a b c (d e))) (LAST-ELEMENT '(a b c (d e))))

;;; Using nth to return last element of list instead of the last cons
(defun LAST-ELEMENT (x)
  (nth (- (length x) 1) x))

(format t "~s = ~s~%" '(LAST-ELEMENT '(a b c d e)) (LAST-ELEMENT '(a b c d e)))
(format t "~s = ~s~%" '(LAST-ELEMENT '(a b c (d e))) (LAST-ELEMENT '(a b c (d e))))
