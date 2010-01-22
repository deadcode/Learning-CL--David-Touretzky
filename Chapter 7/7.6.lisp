(let ((foo '(mapcar #'(lambda (inp) (or (eq inp t) (eq inp nil))) '(t nil 'a '(a b)))))
  (format t "~s = ~s~%" foo (eval foo)))
