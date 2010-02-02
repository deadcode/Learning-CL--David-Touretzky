(defun combine (m n)
  (+ m n))

(defun fib (n)
;;  (declare (NOTINLINE fib))
  (cond ((<= n 0) 1)
        ((= n 1) 1)
        (t (combine
             (fib (- n 1))
             (fib (- n 2))))))

(let ((test1 '(fib 3))
      (test2 '(fib 4)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2)))
