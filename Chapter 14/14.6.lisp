(defmacro variable-chain (&rest vars)
  `(progn
     ,@(do* ((v vars (rest v))
             (v1 (first v) (first v))
             (v2 (second v) (second v))
             (set-chain nil))
         ((null v2) (reverse set-chain))
         (push `(setf ,v1 ',v2) set-chain))))

(let ((one 1)
      (two 2)
      (three 3)
      (four 4)
      (test '(variable-chain one two three four)))
  (format t "~&~s = ~s, ~s = ~s, ~s = ~s, ~s = ~s" 'one one 'two two 'three three 'four four)
  (format t "~&Running ~s" test)
  (variable-chain one two three four)
  (format t "~&~s = ~s, ~s = ~s, ~s = ~s, ~s = ~s" 'one one 'two two 'three three 'four four))
(let ((one 1)
      (two 2)
      (three 3)
      (four 4)
      (five 5)
      (test '(variable-chain one two three four five)))
  (format t "~%~%~s = ~s, ~s = ~s, ~s = ~s, ~s = ~s, ~s = ~s" 'one one 'two two 'three three 'four four 'five five)
  (format t "~&Running ~s" test)
  (variable-chain one two three four five)
  (format t "~&~s = ~s, ~s = ~s, ~s = ~s, ~s = ~s, ~s = ~s" 'one one 'two two 'three three 'four four 'five five))
