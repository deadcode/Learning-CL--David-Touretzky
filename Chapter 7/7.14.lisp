(defun my-set-intersection (setx sety)
  (remove-if-not #'(lambda (e) (member e sety)) setx))

(defun my-set-union (setx sety)
  (append setx
          (remove-if #'(lambda (e) (member e setx)) sety)))

(let ((foo '(my-set-intersection '(a c e g h i) '(b c d f h j)))
      (bar '(my-set-union '(a c e g h i) '(b c d f h j))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
