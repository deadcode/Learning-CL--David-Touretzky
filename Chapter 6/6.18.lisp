(defun ADD-VOWELS (x)
  (let ((VOWELS '(a e i o u)))
    (union VOWELS x)))

(format t "~s = ~s~%" '(ADD-VOWELS '(x a e z)) (ADD-VOWELS '(x a e z)))
