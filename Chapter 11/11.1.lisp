(defun it-member (what l)
  (dolist (e l nil)
    (when (equal what e)
      (return e))))

(let ((test1 '(it-member 'foo '(fee fie foe fum)))
      (test2 '(it-member 'foe '(fee fie foe fum))))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2)))
