(defun none-odd (x)
  (every #'(lambda (n) (not (oddp n))) x))

(let ((foo '(none-odd '(2 4 6 -2 8 12)))
      (bar '(none-odd '(1 3 0 5 7 9 11))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
