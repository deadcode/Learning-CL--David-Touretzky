(setf a '(soap water))

(let ((foo
        '(union a '(no soap radio))))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(intersection a (reverse a))))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(set-difference a '(stop for water))))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(set-difference a a)))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(member 'soap a)))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(member 'water a)))
  (format t "~s = ~s~%" foo (eval foo)))
(let ((foo
        '(member 'washcloth a)))
  (format t "~s = ~s~%" foo (eval foo)))
