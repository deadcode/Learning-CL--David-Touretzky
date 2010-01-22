;;; Not-all-odd == true even if a single number is not odd
;;; Better defined as any-even
(defun not-all-odd (x)
  (find-if
    #'(lambda (n) (not (oddp n)))
    x))

(let ((foo '(not-all-odd '(1 3 5 -3 7 11)))
      (bar '(not-all-odd '(1 3 0 5 7 9 11))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
