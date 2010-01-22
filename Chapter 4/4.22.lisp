(defun BOILINGP (temp scale)
  (cond ((equal scale 'celsius) (> temp 100))
        ((equal scale 'fahrenheit) (> temp 212))
        (t nil)))

(format t "Version using cond~%")
(format t "~s = ~s~%" '(BOILINGP 32 'celsius) (BOILINGP 32 'celsius))
(format t "~s = ~s~%" '(BOILINGP 212 'celsius) (BOILINGP 212 'celsius))
(format t "~s = ~s~%" '(BOILINGP 100 'fahrenheit) (BOILINGP 100 'fahrenheit))
(format t "~s = ~s~%" '(BOILINGP 273 'fahrenheit) (BOILINGP 273 'fahrenheit))
(format t "~s = ~s~%" '(BOILINGP 273 'kelvin) (BOILINGP 273 'kelvin))

(defun BOILINGP (temp scale)
  (if (equal scale 'celsius) (> temp 100)
    (if (equal scale 'fahrenheit) (> temp 212)
      nil)))

(format t "~%Version using if~%")
(format t "~s = ~s~%" '(BOILINGP 32 'celsius) (BOILINGP 32 'celsius))
(format t "~s = ~s~%" '(BOILINGP 212 'celsius) (BOILINGP 212 'celsius))
(format t "~s = ~s~%" '(BOILINGP 100 'fahrenheit) (BOILINGP 100 'fahrenheit))
(format t "~s = ~s~%" '(BOILINGP 273 'fahrenheit) (BOILINGP 273 'fahrenheit))
(format t "~s = ~s~%" '(BOILINGP 273 'kelvin) (BOILINGP 273 'kelvin))

(defun BOILINGP (temp scale)
  (or (and (equal scale 'celsius) (> temp 100))
      (and (equal scale 'fahrenheit) (> temp 212))
      nil))

(format t "~%Version using and/or~%")
(format t "~s = ~s~%" '(BOILINGP 32 'celsius) (BOILINGP 32 'celsius))
(format t "~s = ~s~%" '(BOILINGP 212 'celsius) (BOILINGP 212 'celsius))
(format t "~s = ~s~%" '(BOILINGP 100 'fahrenheit) (BOILINGP 100 'fahrenheit))
(format t "~s = ~s~%" '(BOILINGP 273 'fahrenheit) (BOILINGP 273 'fahrenheit))
(format t "~s = ~s~%" '(BOILINGP 273 'kelvin) (BOILINGP 273 'kelvin))
