;; Exercise 4.8 from Touretzky
(defun EMPHASIZE3 (phrase)
  (cond ((equal (first phrase) 'good) (cons 'great (rest phrase)))
        ((equal (first phrase) 'bad) (cons 'awful (rest phrase)))
        (t (cons 'very phrase))))

(format t "~s = ~s~%" '(EMPHASIZE3 '(good day)) (EMPHASIZE3 '(good day)))
(format t "~s = ~s~%" '(EMPHASIZE3 '(bad day)) (EMPHASIZE3 '(bad day)))
(format t "~s = ~s~%" '(EMPHASIZE3 '(long day)) (EMPHASIZE3 '(long day)))
(format t "~s = ~s~%" '(EMPHASIZE3 '(very long day)) (EMPHASIZE3 '(very long day)))
