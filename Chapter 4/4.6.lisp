;; Exercise 4.6 from Touretzky
(defun MY-ABS (n)
  (cond ((< n 0) (- n))
        (t n)))

(format t "(MY-ABS(2) = ~s~%" (MY-ABS 2))
(format t "(MY-ABS(-3) = ~s~%" (MY-ABS -3))
(format t "(MY-ABS(0) = ~s~%" (MY-ABS 0))
