(defstruct starship
  (name nil)
  (speed 0)
  (condition 'green)
  (shields 'down))

(let ((test1 '(type-of 'make-starship))
      (test2 '(type-of #'make-starship))
      (test3 '(type-of (make-starship))))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2))
  (format t "~&~s = ~s" test3 (eval test3)))
