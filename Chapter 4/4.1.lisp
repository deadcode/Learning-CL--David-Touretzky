;; Exercise 4.1 from Touretzky
(defun MAKE-EVEN (n)
  (if (evenp n) n (+ n 1)))
(print (MAKE-EVEN 3))
(print (MAKE-EVEN 4))
