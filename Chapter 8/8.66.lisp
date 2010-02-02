(defun arith-eval (x)
  (declare (notinline arith-eval))
  (cond ((null x) nil)
        ((atom x) x)
        (t (funcall (second x) (arith-eval (first x)) (arith-eval (third x))))))

(let ((test1 '(arith-eval '(2 + (3 * 4)))))
  (format t "~s = ~s~%" test1 (eval test1)))
