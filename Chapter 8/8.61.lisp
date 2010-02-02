(defun count-up-int (n x)
  ;(declare (notinline count-up-int))
  (cond ((zerop n) x)
        (t (count-up-int (- n 1) (cons n x)))))

(defun count-up (n)
  (count-up-int n nil))

;;(trace count-up)
;;(trace count-up-int)

(let ((test1 '(count-up 5)))
  (format t "~s = ~s~%" test1 (eval test1)))
