(setf french-dict '((one un)
                    (two deux)
                    (three trois)
                    (four quatre)
                    (five cinq)))

(let ((test1 '(mapcar
                #'(lambda (eng-fr esp) (append eng-fr (list esp)))
                french-dict
                '(uno dos tres quatro cinco))))
  (format t "~s = ~s~%" test1 (eval test1)))
