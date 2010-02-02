(defun add-nums (n)
  (cond ((<= n 0) 0)
        (t (+ n (add-nums (- n 1))))))

(let ((test1 '(add-nums 0))
      (test2 '(add-nums 1))
      (test3 '(add-nums 5)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))