(defun greater-than-five-p (n)
  (> n 5))

(let ((foo '(mapcar #'greater-than-five-p '(2 0 3 5 0 -5 6))))
  (format t "~s = ~s~%" foo (eval foo)))
