(defun every-other (x)
  (cond ((null x) nil)
        (t (cons (first x) (every-other (rest (rest x)))))))

(let ((test1 '(every-other '(a b c d e f g)))
      (test2 '(every-other '(I came I saw I conquered))))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2)))
