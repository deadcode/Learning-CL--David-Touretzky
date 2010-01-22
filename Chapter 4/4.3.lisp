;; Exercise 4.3 from Touretzky
(defun MY-NOT (inp)
  (if inp nil t))
(format t "(MY-NOT t) = ~d~%" (MY-NOT t))
(format t "(MY-NOT nil) = ~d~%" (MY-NOT nil))
(format t "(MY-NOT (= 1 0)) = ~d~%" (MY-NOT (= 1 0)))
(format t "(MY-NOT (= 2 2)) = ~d~%" (MY-NOT (= 2 2)))
