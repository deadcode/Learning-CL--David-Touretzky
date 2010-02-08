(setf *total-glasses* 0)

(defun sell (n)
  "Ye Olde Lemonade Stand: Sales by the Glass."
  (incf *total-glasses* n)
  (format t
          "~&That makes ~S glasses so far today."
          *total-glasses*))

(sell 3)
(sell 2)
