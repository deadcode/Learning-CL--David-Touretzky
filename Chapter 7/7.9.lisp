(defun find-nested (x)
  (find-if #'(lambda (y) (and (listp y) (not (equal y nil)))) x))

(let ((foo '(find-nested '(a () b (c d) e (f g h) i))))
  (format t "~s = ~s~%" foo (eval foo)))
