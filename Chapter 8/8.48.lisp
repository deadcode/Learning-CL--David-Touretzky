(defun bury (item n)
  (cond ((<= n 0) item)
        (t (cons (bury item (- n 1)) nil))))

(let ((test1 '(bury 'fred 2))
      (test2 '(bury 'fred 5))
      (test3 '(bury 'fred 1)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))
