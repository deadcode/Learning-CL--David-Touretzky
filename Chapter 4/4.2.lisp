;; Exercise 4.2 from Touretzky
(defun FURTHER (n)
  (if (> n 0) (+ n 1) (- n 1)))
(format t "(FURTHER ~d) = ~d~%" 2 (FURTHER 2))
(format t "(FURTHER ~d) = ~d~%" -2 (FURTHER -2))
(format t "(FURTHER ~d) = ~d~%" 0 (FURTHER 0))

(defun FURTHER-2 (n)
  (if (= n 0) n
    (if (> n 0) (+ n 1) (- n 1))))
(format t "(FURTHER-2 ~d) = ~d~%" 2 (FURTHER-2 2))
(format t "(FURTHER-2 ~d) = ~d~%" -2 (FURTHER-2 -2))
(format t "(FURTHER-2 ~d) = ~d~%" 0 (FURTHER-2 0))
