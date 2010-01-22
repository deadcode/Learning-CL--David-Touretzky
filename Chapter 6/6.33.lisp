(setf books '((war-and-peace . leo-tostoy)
              (alice-in-wonderland . lewis-carol)
              (odyssey . homer)
              (divine-comedy . dante-alighieri)
              (romeo-and-juliet . william-shakespeare)))

(defun who-wrote (book)
  (cdr (assoc book books)))

(defun wrote-what (author)
  (car (rassoc author books)))

(let ((test1 '(who-wrote 'divine-comedy))
      (test2 '(wrote-what 'lewis-carol))
      (test3 '(wrote-what 'yates)))
  (format t "~s = ~s~%" test1 (eval test1))
  (format t "~s = ~s~%" test2 (eval test2))
  (format t "~s = ~s~%" test3 (eval test3)))
