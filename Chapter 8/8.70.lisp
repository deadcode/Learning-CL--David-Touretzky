(defun factor-tree-int (n p)
  (cond ((equal n 1) 1)
        ((equal n p) n)
        ((zerop (rem n p)) (list n p (factor-tree-int (/ n p) p)))
        (t (factor-tree-int n (+ p 1)))))

(defun factor-tree (n)
  (factor-tree-int n 2))

(let ((test1 '(factor-tree 60)))
  (format t "~s = ~s~%" test1 (eval test1)))
