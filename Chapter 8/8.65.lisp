(defun tr-count-slices (x)
  (labels ((count-slices-rec (x num-slices)
                             (cond ((null x) num-slices)
                                   (t (count-slices-rec (rest x) (+ 1 num-slices))))))
    (count-slices-rec x 0)))

(defun tr-reverse (x)
  (labels ((reverse-rec (x result)
                        (cond ((null x) result)
                              (t (reverse-rec (rest x) (cons (first x) result))))))
    (reverse-rec x nil)))

(let ((test1 '(tr-count-slices '(x x x x x)))
      (test2 '(tr-reverse '(a b c d e f))))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2)))
