(defun anyoddp (x)
  (if (null x)
    nil
    (if (oddp (first x))
      t
      (anyoddp (rest x)))))

(trace anyoddp)
(trace oddp)
(let ((foo '(anyoddp '(2 4 6 7 8 9))))
  (format t "~s = ~s~%" foo (eval foo)))
