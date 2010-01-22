(defun roughly-equal (x k)
  (let ((compare #'(lambda (n) (and (>= n (- k 10)) (<= n (+ k 10))))))
    (find-if compare x)))

(let ((foo '(roughly-equal '(100 145 175 156 200) 150)))
  (format t "~s = ~s~%" foo (eval foo)))
