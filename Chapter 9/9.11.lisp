(defun dot-prin1 (x)
  (cond ((atom x)
         (format t "~s" x))
        (t (format t "(")
           (dot-prin1 (first x))
           (format t " . ")
           (dot-prin1 (rest x))
           (format t ")"))))

(let ((test1 '(dot-prin1 '()))
      (test2 '(dot-prin1 'a))
      (test3 '(dot-prin1 '(a)))
      (test4 '(dot-prin1 '(a b)))
      (test5 '(dot-prin1 '(a b c)))
      (test6 '(dot-prin1 '(a (b) c)))
      (test7 '(dot-prin1 '((((a)))))))
  (format t "~&Testing ~s~%" test1)
  (eval test1)
  (format t "~&Testing ~s~%" test2)
  (eval test2)
  (format t "~&Testing ~s~%" test3)
  (eval test3)
  (format t "~&Testing ~s~%" test4)
  (eval test4)
  (format t "~&Testing ~s~%" test5)
  (eval test5)
  (format t "~&Testing ~s~%" test6)
  (eval test6)
  (format t "~&Testing ~s~%" test7)
  (eval test7))
