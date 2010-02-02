(defun my-member (e x)
  (cond ((null x) nil)
        ((equal e (first x)) x)
        (t (my-member e (rest x)))))

(let ((test1 '(my-member 'c '(a b c d e f)))
      (test2 '(my-member 'f '(a b c d e f)))
      (test3 '(my-member 'g '(a b c d e f)))
      (test4 '(my-member 'g '())))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3))
  (format t "~s = ~s~%" test4 (eval test4)))
