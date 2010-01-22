(defun MAKE-PALINDROME (x)
  (append x (reverse x)))

(format t "~s = ~s~%" '(MAKE-PALINDROME '(YOU AND ME)) (MAKE-PALINDROME '(YOU AND ME)))
