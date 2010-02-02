(defun add-up (x)
  (cond ((null x) 0)
        (t (+ (add-up (rest x)) (first x)))))

(let ((test1 '(add-up '(2 3 7)))
      (test2 '(add-up '())))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2)))
