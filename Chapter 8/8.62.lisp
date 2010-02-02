(defun fact-int (n result)
  ;(declare (notinline fact-int))
  (cond ((zerop n) result)
        (t (fact-int (- n 1) (* n result)))))

(defun fact (n)
  (fact-int n 1))

;;(trace fact-int)

(let ((test1 '(fact 5)))
  (format t "~s = ~s~%" test1 (eval test1)))
