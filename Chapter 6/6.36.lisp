(defun swap-first-last (x)
  (let ((to-move (first x)))
    (append (remove to-move x) (list to-move))))

(let ((foo '(swap-first-last '(you cant buy love))))
  (format t "~s = ~s~%" foo (eval foo)))
