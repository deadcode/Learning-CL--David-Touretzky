(defun it-assoc (what table)
  (dolist (row table nil)
    ;(format t "~&Looking .. ~s" row)
    (when (equal what (car row))
      (return row))))

(let ((test1 '(it-assoc 'four '((one ek)(two do)(three teen)(four char)(five panch))))
      (test2 '(it-assoc 'six '((one ek)(two do)(three teen)(four char)(five panch)))))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2)))