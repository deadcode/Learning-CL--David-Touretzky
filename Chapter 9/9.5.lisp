(defun print-board (x)
  (labels ((print-pos (pos print-seperator)
                      (cond ((null pos)
                             (format t "   "))
                            (t (format t " ~s " pos)))
                      (if (not (null print-seperator))
                        (format t "|")
                        ())))
    (print-pos (nth 0 x) t)
    (print-pos (nth 1 x) t)
    (print-pos (nth 2 x) nil)
    (format t "~&-----------~%")
    (print-pos (nth 3 x) t)
    (print-pos (nth 4 x) t)
    (print-pos (nth 5 x) nil)
    (format t "~&-----------~%")
    (print-pos (nth 6 x) t)
    (print-pos (nth 7 x) t)
    (print-pos (nth 8 x) nil)))

(print-board '(x o o nil x nil o nil x))
