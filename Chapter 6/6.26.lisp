(defun right-side (x)
  (rest (member '-vs- x)))

(defun left-side (x)
  (right-side (reverse x)))

(defun count-common (x)
  (length (intersection (left-side x) (right-side x))))

(defun common (x)
  (list (count-common x) 'common 'features))

(let* ((features
        ''(large red shiny cube -vs-
                small shiny red four-sided pyramid))
       (part-a (list 'right-side features))
       (part-b (list 'left-side features))
       (part-c (list 'count-common features))
       (part-d (list 'common features))
       (part-e '(common '(small red metal cube -vs-
                                red plastic small cube))))
  (format t "~s = ~s~%" part-a (eval part-a))
  (format t "~s = ~s~%" part-b (eval part-b))
  (format t "~s = ~s~%" part-c (eval part-c))
  (format t "~s = ~s~%" part-d (eval part-d))
  (format t "~s = ~s~%" part-e (eval part-e))
  )
