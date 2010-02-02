(defun huge-rec (n remaining)
  (cond ((<= remaining 1) n)
        (t (* n (huge-rec n (- remaining 1))))))

(defun huge (n)
  (huge-rec n n))

(let ((test1 '(huge 2))
      (test2 '(huge 3))
      (test3 '(huge 4)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))
