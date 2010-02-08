(defun chop (x)
  (setf (cdr x) nil))

(let* ((sample-list ''(fee fie foe fum))
       (test1 (list 'chop sample-list)))
  (format t "~&sample-list = ~s" sample-list)
  (format t "~&Testing ~s" test1)
  (eval test1)
  (format t "~&sample-list = ~s" sample-list))
