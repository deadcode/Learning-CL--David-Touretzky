(defun royal-we (where)
  (let ((from-what 'i)
        (to-what 'we))
    (subst to-what from-what where)))

(let ((foo '(royal-we '(if I learn lisp I will be pleased))))
  (format t "~s = ~s~%" foo (eval foo)))
