(defun cookie-monster ()
  (format t "~&Give me cookie!!!")
  (format t "~&Cookie? ")
  (let ((what-is-it (read)))
    (cond ((equal what-is-it 'cookie)
           (format t "~&Thank you!...Munch munch munch...BURP~%"))
          (t (format t "No want ~s...~%~%" what-is-it)
             (cookie-monster)))))

(cookie-monster)