(setf *friends* nil)
(setf *already-met* 0)

(defun meet (person)
  (cond ((equal person (first *friends*))
         (incf *already-met*)
         'we-just-met)
        ((member person *friends*)
         (incf *already-met*)
         'we-know-each-other)
        (t (push person *friends*)
           'pleased-to-meet-you)))

(let ((test1 '(meet 'fred))
      (test2 '(meet 'cindy))
      (test3 '(meet 'cindy))
      (test4 '(meet 'joe))
      (test5 '(meet 'fred)))
  (format t "~&~s: ~s" test1 (eval test1))
  (format t "~&State: ~s=~s, ~s=~s" '*friends* *friends* '*already-met* *already-met*)
  (format t "~&~s: ~s" test2 (eval test2))
  (format t "~&State: ~s=~s, ~s=~s" '*friends* *friends* '*already-met* *already-met*)
  (format t "~&~s: ~s" test3 (eval test3))
  (format t "~&State: ~s=~s, ~s=~s" '*friends* *friends* '*already-met* *already-met*)
  (format t "~&~s: ~s" test4 (eval test4))
  (format t "~&State: ~s=~s, ~s=~s" '*friends* *friends* '*already-met* *already-met*)
  (format t "~&~s: ~s" test5 (eval test5))
  (format t "~&State: ~s=~s, ~s=~s" '*friends* *friends* '*already-met* *already-met*))
