(setf nerd-states '((sleeping . eating)
                    (eating . waiting-for-a-computer)
                    (waiting-for-a-computer . programming)
                    (programming . debugging)
                    (debugging . sleeping)))

(defun nerdus (current-state)
  (cdr (assoc current-state nerd-states)))

(defun sleepless-nerd (current-state)
  (let ((new-state (nerdus current-state)))
    (cond ((equal new-state 'sleeping) (nerdus new-state))
          (t new-state))))

(defun nerd-on-caffeine (current-state)
  (nerdus (nerdus current-state)))

(defun count-intermediate-states (nerd-type current-state final-state)
  (cond ((equal current-state final-state) 0)
        (t (+ (count-intermediate-states nerd-type (funcall nerd-type current-state) final-state) 1))))

(let ((partb1 '(nerdus 'sleeping))
      (partb2 '(nerdus 'debugging))
      (partc '(nerdus 'playing-guitar))
      (partd1 '(sleepless-nerd 'eating))
      (partd2 '(sleepless-nerd 'sleeping))
      (partd3 '(sleepless-nerd 'debugging))
      (parte1 '(nerd-on-caffeine 'debugging))
      (parte2 '(nerd-on-caffeine 'eating))
      (parte3 '(nerd-on-caffeine 'playing-guitar))
      (partf '(count-intermediate-states #'nerd-on-caffeine 'programming 'debugging)))
  (format t "~s = ~s~%" partb1 (eval partb1))
  (format t "~s = ~s~%" partb2 (eval partb2))
  (format t "~s = ~s~%" partc (eval partc))
  (format t "~s = ~s~%" partd1 (eval partd1))
  (format t "~s = ~s~%" partd2 (eval partd2))
  (format t "~s = ~s~%" partd3 (eval partd3))
  (format t "~s = ~s~%" parte1 (eval parte1))
  (format t "~s = ~s~%" parte2 (eval parte2))
  (format t "~s = ~s~%" parte3 (eval parte3))
  (format t "~s = ~s~%" partf (eval partf)))
