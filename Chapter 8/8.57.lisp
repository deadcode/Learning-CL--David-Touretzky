(defun left-half-rec (x remaining)
  (cond ((null x) nil)
        ((<= remaining 0) nil)
        (t (cons (first x) (left-half-rec (rest x) (- remaining 1))))))

(defun left-half (x)
  (let ((half-len (/ (length x) 2)))
    (left-half-rec x half-len)))

(let ((test1 '(left-half '(a b c d e)))
      (test2 '(left-half '(1 2 3 4 5 6 7 8))))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2)))
