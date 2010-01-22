;(setf ARTICLES '(the a an))
(defun CONTAINS-ARTICLE-P (x)
  (let ((ARTICLES '(the a an)))
    (intersection ARTICLES x)))

(format t "~s = ~s~%" 
        '(CONTAINS-ARTICLE-P 
           '(The parakeet ate an apple and a chili))
        (CONTAINS-ARTICLE-P
          '(The parakeet ate an apple and a chili)))
(format t "~s = ~s~%"
        '(CONTAINS-ARTICLE-P
           '(There is no article in there))
        (CONTAINS-ARTICLE-P
          '(There is no article in there)))

(defun CONTAINS-ARTICLE-P (x)
  (or (member 'the x)
      (member 'a x)
      (member 'an x)))

(format t "~s = ~s~%" 
        '(CONTAINS-ARTICLE-P 
           '(The parakeet ate an apple and a chili))
        (CONTAINS-ARTICLE-P
          '(The parakeet ate an apple and a chili)))
(format t "~s = ~s~%"
        '(CONTAINS-ARTICLE-P
           '(There is no article in there))
        (CONTAINS-ARTICLE-P
          '(There is no article in there)))

(defun CONTAINS-ARTICLE-P (x)
  (not (and (not (member 'the x))
            (not (member 'a x))
            (not (member 'an x)))))

(format t "~s = ~s~%" 
        '(CONTAINS-ARTICLE-P 
           '(The parakeet ate an apple and a chili))
        (CONTAINS-ARTICLE-P
          '(The parakeet ate an apple and a chili)))
(format t "~s = ~s~%"
        '(CONTAINS-ARTICLE-P
           '(There is no article in there))
        (CONTAINS-ARTICLE-P
          '(There is no article in there)))
