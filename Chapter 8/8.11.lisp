(defun fib (n)
  (cond ((<= n 1) 1)
        (t (+ (fib (- n 1)) (fib (- n 2))))))

(let ((test1 '(fib 0))
      (test2 '(fib 1))
      (test3 '(fib 4))
      (test4 '(fib 5)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3))
  (format t "~s = ~s~%" test4 (eval test4)))
