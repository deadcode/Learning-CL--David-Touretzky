(defun sum-tree (x)
  (cond ((null x) 0)
        ((numberp x) x)
        ((atom x) 0)
        (t (+ (sum-tree (car x))
              (sum-tree (cdr x))))))

(let ((test1 '(sum-tree '((3 bears)(3 bowls)(1 girl))))
      (test2 '(sum-tree '((a bear)(a bowl)(no girl)))))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2)))