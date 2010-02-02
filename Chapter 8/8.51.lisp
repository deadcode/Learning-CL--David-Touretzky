(defun my-reverse-int (x n)
  (cond ((< n 0) nil)
        (t (append (list (nth n x)) (my-reverse-int x (- n 1))))))

(defun my-reverse (x)
  (my-reverse-int x (- (length x) 1)))

(let ((test1 '(my-reverse '(a b c d e)))
      (test2 '(my-reverse '(a)))
      (test3 '(my-reverse '())))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))
