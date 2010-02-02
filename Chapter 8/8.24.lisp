(defun count-down (n)
  (cond ((<= n 0) nil)
        (t (cons n (count-down (- n 1))))))

(let ((test1 '(count-down 0))
      (test2 '(count-down 1))
      (test3 '(count-down 5)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))