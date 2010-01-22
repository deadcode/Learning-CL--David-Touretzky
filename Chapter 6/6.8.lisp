(defun MY-BUTLAST (x)
  (reverse (rest (reverse x))))

(format t "~s = ~s~%" '(MY-BUTLAST '(Roses Are Red)) (MY-BUTLAST '(Roses Are Red)))
(format t "~s = ~s~%" '(MY-BUTLAST '(G A G A)) (MY-BUTLAST '(G A G A)))
