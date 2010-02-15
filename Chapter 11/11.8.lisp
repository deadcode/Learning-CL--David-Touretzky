(defun it-reverse (x)
  (let ((result nil))
    (dolist (e x result)
      (push e result))))

(let ((test1 '(it-reverse '(1 2 3 4)))
      (test2 '(it-reverse '(1)))
      (test3 '(it-reverse '())))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2))
  (format t "~&~s = ~s" test3 (eval test3)))
