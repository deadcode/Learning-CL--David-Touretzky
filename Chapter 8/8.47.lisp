(defun make-loaf-int (done all)
  (if (> done all)
    nil
    (cons 'x (make-loaf-int (+ 1 done) all))))

(defun make-loaf (n)
  (make-loaf-int 1 n))

(let ((test1 '(make-loaf 4)))
  (format t "~s = ~s~%" test1 (eval test1)))
