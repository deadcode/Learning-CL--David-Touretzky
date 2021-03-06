(defun gross-pay ()
  (format t "~&Enter the hourly wage rate: ")
  (let ((rate (read)))
    (format t "~&Enter number of hours worked: ")
    (let ((hours (read)))
      (format t "~&Gross Salary is $~s~%" (* rate hours)))))

(defun gross-pay ()
  (format t "~&Enter the hourly wage rate: ")
  (let ((rate (read))
        (bar (format t "~&Enter number of hours worked: "))
        (hours (read)))
    (format t "~&Gross Salary is $~s~%" (* rate hours))))

(defun gross-pay ()
  (labels ((prompt-and-get-value (prompt)
                                 (format t "~&~A" prompt)
                                 (read)))
    (let ((rate (prompt-and-get-value "Enter the hourly wage rate: "))
          (hours (prompt-and-get-value "Enter the number of hours worked: ")))
      (format t "~&Gross Salary is $~s~%" (* rate hours)))))

(gross-pay)
