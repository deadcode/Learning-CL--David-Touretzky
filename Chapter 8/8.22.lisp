(defun all-equal (x)
  (cond ((null (cdr x)) t)
        ((equal (first x) (second x)) (all-equal (rest x)))
        (t nil)))

(let ((test1 '(all-equal '(a b c d)))
      (test2 '(all-equal '(a a a a)))
      (test3 '(all-equal '(a b c d e)))
      (test4 '(all-equal '(a a a a a)))
      (test5 '(all-equal '(a b)))
      (test6 '(all-equal '(a a)))
      (test7 '(all-equal '(a)))
      (test8 '(all-equal '())))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3))
  (format t "~s = ~s~%" test4 (eval test4))
  (format t "~s = ~s~%" test5 (eval test5))
  (format t "~s = ~s~%" test6 (eval test6))
  (format t "~s = ~s~%" test7 (eval test7))
  (format t "~s = ~s~%" test8 (eval test8)))