(defun launch (n)
  (dotimes (cnt n (format t "Blast off!"))
    (format t "~s..." (- n cnt))))

(let ((test1 '(launch 10)))
  (format t "~&Testing ~s~%" test1)
  (eval test1))
