(defun l2-len-1 (listlist)
  (length (reduce #'append listlist)))

(defun l2-len-2 (listlist)
  (reduce #'+ (mapcar #'length listlist)))

(let ((foo '(l2-len-1 '((a) (b c) (d e f) (g h i j) (k l m) (n o) (p))))
      (bar '(l2-len-2 '((a) (b c) (d e f) (g h i j) (k l m) (n o) (p)))))
  (format t "~s = ~s~%" foo (eval foo))
  (format t "~s = ~s~%" bar (eval bar)))
