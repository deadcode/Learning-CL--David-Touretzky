(defun picky (x)
  (remove-if-not #'(lambda (y) (= (length y) 2)) x))

(let ((foo '(picky '((a) (b) (c d) (e f g) (h i) (j k l m) (n) (o p) (q r s) (t u v w) (x y) (z)))))
  (format t "~s = ~s~%" foo (eval foo)))
