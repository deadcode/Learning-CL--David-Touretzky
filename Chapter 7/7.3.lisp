(let ((foo '(mapcar #'zerop '(2 0 3 4 0 -5 -6))))
  (format t "~s = ~s~%" foo (eval foo)))
