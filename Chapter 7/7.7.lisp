(let ((foo '(mapcar #'(lambda (inp) (if (equal inp 'down) 'up 'down)) '(up down up up))))
  (format t "~s = ~s~%" foo (eval foo)))
