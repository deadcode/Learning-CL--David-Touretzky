(defun rec-member (e x)
  (cond ((null x) nil)
        ((equal e (first x)) x)
        (t (rec-member e (rest x)))))

(let ((test1 '(rec-member 'e '(a e i o u)))
      (test2 '(rec-member 'u '(a e i o u)))
      (test3 '(rec-member 'z '(a e i o u))))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))