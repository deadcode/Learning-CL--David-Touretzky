(defun add1 (n)
  (+ n 1))

(let ((foo '(mapcar #'add1 '(1 3 5 7 9))))
  (format t "~s = ~s~%" foo (eval foo)))
