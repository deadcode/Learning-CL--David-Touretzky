(setf daily-planet '((olsen jimmy 123-76-4535 cub-reporter)
                     (kent  clark 089-52-6787 reporter)
                     (lane  lois  951-26-1438 reporter)
                     (white perry 355-16-7439 editor)))

(let ((foo '(mapcar #'third daily-planet)))
  (format t "~s = ~s~%" foo (eval foo)))
