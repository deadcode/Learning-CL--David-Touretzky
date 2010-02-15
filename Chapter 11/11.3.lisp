(defun check-all-odd (l)
  (cond ((null l) t)
        ((oddp (first l))
         (format t "~&Checking ~s..." (first l))
         (check-all-odd (rest l)))
        (t
          (format t "~&Checking ~s..." (first l))
          nil)))

(let ((test1 '(check-all-odd '(1 3 5)))
      (test2 '(check-all-odd '(1 3 4 5))))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2)))
