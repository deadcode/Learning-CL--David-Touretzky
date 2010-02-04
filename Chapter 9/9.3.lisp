(defun draw-line (n)
  (cond ((zerop n) t)
        (t (format t "*")(draw-line (- n 1)))))

(defun draw-box (x y)
  (cond ((zerop y) t)
        (t (format t "~&")(draw-line x)(draw-box x (- y 1)))))

(draw-box 10 4)
