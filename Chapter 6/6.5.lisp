;;; Exercise 6.5 from Touretzky
(setf LINE '(ROSES ARE RED))

(format t "~s~%" LINE)
(format t "~s = ~s~%" '(reverse LINE) (reverse LINE))
(format t "~s = ~s~%" '(first (last LINE)) (first (last LINE)))
(format t "~s = ~s~%" '(nth 1 LINE) (nth 1 LINE))
(format t "~s = ~s~%" '(reverse (reverse LINE)) (reverse (reverse LINE)))
(format t "~s = ~s~%" '(append LINE (list (first LINE))) (append LINE (list (first LINE))))
(format t "~s = ~s~%" '(append (last LINE) LINE) (append (last LINE) LINE))
(format t "~s = ~s~%" '(list (first LINE) (last LINE)) (list (first LINE) ( last LINE)))
(format t "~s = ~s~%" '(cons (last LINE) LINE) (cons (last LINE) LINE))
(format t "~s = ~s~%" '(remove 'ARE LINE) (remove 'ARE LINE))
(format t "~s = ~s~%" '(append LINE '(VIOLETS ARE BLUE)) (append LINE '(VIOLETS ARE BLUE)))
