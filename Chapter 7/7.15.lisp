(setf my-hand '((3 hearts)
                (5 clubs)
                (2 diamonds)
                (4 diamonds)
                (ace spades)))

(setf colors '((clubs black)
               (diamonds red)
               (hearts red)
               (spades black)))

(setf all-ranks '(2 3 4 5 6 7 8 9 10 jack queen king ace))

(defun rank (card)
  (first card))

(defun suit (card)
  (second card))

(defun count-suit (look-for hand)
  (length (remove-if-not #'(lambda (card) (equal look-for (suit card))) hand)))

(defun color-of (card)
  (second (assoc (suit card) colors)))

(defun first-red (hand)
  (find-if #'(lambda (card) (equal (color-of card) 'red)) hand))

(defun black-cards (hand)
  (remove-if-not
    #'(lambda (card) (equal (color-of card) 'black))
    hand))

(defun what-ranks (look-for hand)
  (let ((my-suit-cards (remove-if-not
                         #'(lambda (card) (equal (suit card) look-for))
                         hand)))
    (mapcar #'first my-suit-cards)))

(defun my-beforep (elem1 elem2 in-list)
  (not (member elem1 (member elem2 in-list))))

(defun higher-rank-p (card1 card2)
  (not (my-beforep (rank card1) (rank card2) all-ranks)))

(defun high-card (hand)
  (let ((reverse-all-ranks (reverse all-ranks)))
    (find-if
      #'(lambda (rank-list) (not (equal nil rank-list)))
      (mapcar #'(lambda (rank) (assoc rank hand)) reverse-all-ranks))))

(let ((parta1 '(rank '(2 clubs)))
      (parta2 '(suit '(2 clubs)))
      (partb1 '(count-suit 'diamonds my-hand))
      (partc1 '(color-of '(2 clubs)))
      (partc2 '(color-of '(6 hearts)))
      (partd1 '(first-red my-hand))
      (parte1 '(black-cards my-hand))
      (partf1 '(what-ranks 'diamonds my-hand))
      (partf2 '(what-ranks 'spades my-hand))
      (partg1 '(higher-rank-p '(2 clubs) '(ace spades)))
      (parth1 '(high-card my-hand)))
  (format t "~s = ~s~%" parta1 (eval parta1))
  (format t "~s = ~s~%" parta2 (eval parta2))
  (format t "~s = ~s~%" partb1 (eval partb1))
  (format t "~s = ~s~%" partc1 (eval partc1))
  (format t "~s = ~s~%" partc2 (eval partc2))
  (format t "~s = ~s~%" partd1 (eval partd1))
  (format t "~s = ~s~%" parte1 (eval parte1))
  (format t "~s = ~s~%" partf1 (eval partf1))
  (format t "~s = ~s~%" partf2 (eval partf2))
  (format t "~s = ~s~%" partg1 (eval partg1))
  (format t "~s = ~s~%" parth1 (eval parth1)))
