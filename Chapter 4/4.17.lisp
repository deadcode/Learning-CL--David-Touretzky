(defun right-noun-p (names)
  (or (and
        (or
          (equal (first names) 'boy)
          (equal (first names) 'girl))
        (equal (second names) 'child))
      (and
        (or
          (equal (first names) 'man)
          (equal (first names) 'woman))
        (equal (second names) 'adult))))

(format t "~s = ~s~%" '(right-noun-p '(boy child)) (right-noun-p '(boy child)))
(format t "~s = ~s~%" '(right-noun-p '(boy baby)) (right-noun-p '(boy baby)))
(format t "~s = ~s~%" '(right-noun-p '(girl child)) (right-noun-p '(girl child)))
(format t "~s = ~s~%" '(right-noun-p '(girl baby)) (right-noun-p '(girl baby)))
(format t "~s = ~s~%" '(right-noun-p '(barbie child)) (right-noun-p '(barbie child)))

(format t "~s = ~s~%" '(right-noun-p '(man adult)) (right-noun-p '(man adult)))
(format t "~s = ~s~%" '(right-noun-p '(man octogenarian)) (right-noun-p '(man octogenarian)))
(format t "~s = ~s~%" '(right-noun-p '(woman adult)) (right-noun-p '(woman adult)))
(format t "~s = ~s~%" '(right-noun-p '(woman octogenarian)) (right-noun-p '(woman octogenarian)))
(format t "~s = ~s~%" '(right-noun-p '(blonde adult)) (right-noun-p '(blonde adult)))
