(defstruct starship
  (name nil)
  (speed 0)
  (condition 'green)
  (shields 'down))

(let ((test1 '(starship-p 'starship)))
  (format t "~&~s = ~s" test1 (eval test1)))
