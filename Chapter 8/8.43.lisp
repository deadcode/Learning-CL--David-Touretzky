(defun flatten (x)
  (cond ((null x) nil)
        ((atom x) (list x))
        (t (append (flatten (car x))
                   (flatten (cdr x))))))

(let ((test1 '(flatten '((A B (R)) A C (A D ((A (B)) R) A)))))
  (format t "~s = ~s~%" test1 (eval test1)))
