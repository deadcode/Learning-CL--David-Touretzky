(defun set-equal (a b)
  (and (subsetp a b)
       (subsetp b a)))

(let ((foo
        '(set-equal '(red blue green) '(green blue red))))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(set-equal '(red blue green) '(green blue red black))))
  (format t "~s = ~s~%" foo (eval foo)))
