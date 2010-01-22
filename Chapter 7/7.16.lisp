(let ((foo '(reduce #'union '((a b c) (c d a) (f b d) (g)))))
  (format t "~s = ~s~%" foo (eval foo)))
