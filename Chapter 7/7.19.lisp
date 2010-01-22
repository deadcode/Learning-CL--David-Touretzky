(defun all-odd (x)
  (every #'oddp x))

(let ((foo '(all-odd '(1 3 5 -3 7 11)))
      (bar '(all-odd '(1 3 0 5 7 9 11))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
