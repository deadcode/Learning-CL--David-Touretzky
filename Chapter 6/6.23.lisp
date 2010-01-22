(defun set-cardinality (x)
  (length x))

(let ((foo
        '(set-cardinality '(The quick brown fox))))
  (format t "~s = ~s~%" foo (eval foo)))
