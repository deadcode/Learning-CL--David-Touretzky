(defstruct starship
  (name nil)
  (captain nil)
  (speed 0)
  (condition 'green)
  (shields 'down))

(defun print-captain (c s n)
  (format s "#<Captain ~A>"
          (captain-name c)))

(defstruct (captain
             (:print-function print-captain))
  (name nil)
  (age 0)
  (ship nil))

(setf *enterprise* (make-starship :name "Enterprise"
                                  :speed 2))
(setf *captain-kirk* (make-captain :name "James T. Kirk"
                                   :age 35))

(let* ((test1 '*enterprise*)
       (test2 '*captain-kirk*)
       (test3 '(setf (captain-ship *captain-kirk*) *enterprise*))
       (test4 '(setf (starship-captain *enterprise*) *captain-kirk*)))
  (format t "~&~%~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s~%~%" test2 (eval test2))
  (format t "~&Setting ~s" test3)
  (eval test3)
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s~%~%" test2 (eval test2))
  (format t "~&Setting ~s" test4)
  (eval test4)
  (format t "~&~s = ~s" test1 (eval test1))
  (format t "~&~s = ~s~%~%" test2 (eval test2)))
