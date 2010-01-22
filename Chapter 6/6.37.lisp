(defun rotate-left (x)
  (let ((to-move (first x)))
    (append (remove to-move x) (list to-move))))

(defun rotate-right (x)
  (let ((to-move (nth (- (length x) 1) x)))
    (append (list to-move) (remove to-move x))))

(let ((foo '(rotate-left '(a b c d e)))
      (bar '(rotate-right '(a b c d e))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
