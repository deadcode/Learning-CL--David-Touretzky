(defun last-element (x)
  (cond ((atom (cdr x)) (car x))
        (t (last-element (rest x)))))

(let ((test1 '(last-element '(a b c (d e) f)))
      (test2 '(last-element '(a b c d (e f))))
      (test3 '(last-element '()))
      (test4 '(last-element '(a b c d e . f)))
      (test5 '(last-element '(a b c d (e . f)))))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3))
  (format t "~s = ~s~%" test4 (eval test4))
  (format t "~s = ~s~%" test5 (eval test5)))
