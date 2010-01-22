(defun num-range (x)
  (remove-if-not #'(lambda (n) (and (>= n 1) (<= n 5))) x))

(let ((foo '(num-range '(-4 3 10 21 5 2 7 1 9))))
  (format t "~s = ~s~%" foo (eval foo)))
