(defun it-union (set1 set2)
  (let ((result set1))
    (dolist (e set2 result)
      (when (not (member e result))
        (push e result)))))

(let ((test1 '(it-union '(a b c d e f g h i) '(a e i o u)))
      (test2 '(it-union '(a b c d e f g h i) '(a b c d e f g h i)))
      (test3 '(it-union '(a b c d) '(1 2 3 4)))
      (test4 '(it-union '(a b c d) '()))
      (test5 '(it-union '() '(a b c d)))
      (test6 '(it-union '() '())))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2))
  (format t "~&~s = ~s" test3 (eval test3))
  (format t "~&~s = ~s" test4 (eval test4))
  (format t "~&~s = ~s" test5 (eval test5))
  (format t "~&~s = ~s" test6 (eval test6)))