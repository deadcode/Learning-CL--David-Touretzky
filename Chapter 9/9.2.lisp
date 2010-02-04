(defun draw-line (n)
  (cond ((zerop n) t)
        (t (format t "*")(draw-line (- n 1)))))

(draw-line 10)
