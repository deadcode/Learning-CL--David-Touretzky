;;; not-none-odd == true even if single element is odd
;;; Better defined as any-oddp
(defun not-none-odd (x)
  (find-if #'(lambda (n) (oddp n)) x))

(let ((foo '(not-none-odd '(2 4 6 -2 8 12)))
      (bar '(not-none-odd '(2 4 1 6 8 10 12))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
