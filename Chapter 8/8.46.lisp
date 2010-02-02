(defun count-up (n)
  (cond ((<= n 0) nil)
        (t (append (count-up (- n 1)) (list n)))))

(let ((test1 '(count-up 5)))
  (format t "~s = ~s~%" test1 (eval test1)))
