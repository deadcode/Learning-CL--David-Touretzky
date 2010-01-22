(defun count-the (x)
  (length (remove-if-not #'(lambda (word) (equal word 'the)) x)))

(let ((foo '(count-the '(the quick brown fox jumps over the lazy dog))))
  (format t "~s = ~s~%" foo (eval foo)))
