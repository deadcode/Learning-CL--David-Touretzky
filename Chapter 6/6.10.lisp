(defun PALINDROMEP (x)
  (equal x (reverse x)))

(format t "~s = ~s~%" '(PALINDROMEP '(A B C D C B A)) (PALINDROMEP '(A B C D C B A)))
(format t "~s = ~s~%" '(PALINDROMEP '(A B C A B C)) (PALINDROMEP '(A B C A B C)))
