(defun addprop (sym elem prop)
  (pushnew elem (get sym prop)))

(defun record-meeting (x y)
  (addprop x y 'has-met)
  (addprop y x 'has-met)
  t)

(record-meeting 'little-red 'wolfie)
(record-meeting 'wolfie 'grandma)

(defun subprop (sym elem prop)
  (setf (get sym prop) (delete elem (get sym prop))))

(defun forget-meeting (x y)
  (subprop x y 'has-met)
  (subprop y x 'has-met)
  t)

(let* ((test1 '(symbol-plist 'little-red))
       (test2 '(symbol-plist 'wolfie))
       (test3 '(symbol-plist 'grandma))
       (test4 '(forget-meeting 'grandma 'wolfie)))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2))
  (format t "~&~s = ~s" test3 (eval test3))
  (format t "~&~s = ~s" test4 (eval test4))
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s" test2 (eval test2))
  (format t "~&~s = ~s" test3 (eval test3)))
