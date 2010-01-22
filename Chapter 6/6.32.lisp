(setf books '((war-and-peace leo-tostoy)
              (alice-in-wonderland lewis-carol)
              (odyssey homer)
              (divine-comedy dante-alighieri)
              (romeo-and-juliet william-shakespeare)))

(defun who-wrote (book)
  (second (assoc book books)))

(let ((books (reverse books))
      (test1 '(who-wrote 'divine-comedy))
      (test2 '(who-wrote 'othello))
      (test3 '(who-wrote 'romeo-and-juliet)))
  (format t "~s~%" books)
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))