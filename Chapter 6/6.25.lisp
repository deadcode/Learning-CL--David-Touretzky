(defun proper-subsetp (a b)
  (and (subsetp a b)
       (not (subsetp b a))))

(let ((foo
        '(proper-subsetp '(a c) '(c a b))))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(proper-subsetp '(a b c) '(c a b))))
  (format t "~s = ~s~%" foo (eval foo)))
