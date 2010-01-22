(defun MYSTERY (x)
  (first (last (reverse x))))

(format t "~s = ~s~%" '(MYSTERY '(Roses Are Red)) (MYSTERY '(Roses Are Red)))
(format t "~s = ~s~%" '(first '(Roses Are Red)) (first '(Roses Are Red)))
