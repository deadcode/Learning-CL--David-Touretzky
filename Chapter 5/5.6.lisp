;;; Exercise 5.6 from Touretzky
(defun THROW-DIE ()
  (+ (random 6) 1))

(defun THROW-DICE ()
  (let ((die1 (THROW-DIE))
        (die2 (THROW-DIE)))
    (list die1 die2)))

(defun SNAKE-EYES-P (a-throw)
  (let ((die1 (first a-throw))
        (die2 (second a-throw)))
    (and (= die1 1) (= die2 1))))

(defun BOXCARS-P (a-throw)
  (let ((die1 (first a-throw))
        (die2 (second a-throw)))
    (and (= die1 6) (= die2 6))))

(defun INSTANT-WIN-P (a-throw)
  (let ((sum (+ (first a-throw) (second a-throw))))
    (or (= sum 7)
        (= sum 11))))

(defun INSTANT-LOSS-P (a-throw)
  (let ((sum (+ (first a-throw) (second a-throw))))
    (or (= sum 2)
        (= sum 3)
        (= sum 12))))

(defun SAY-THROW (a-throw)
  (let ((sum (+ (first a-throw) (second a-throw))))
    (cond ((= sum 2) 'SNAKE-EYES)
          ((= sum 12) 'BOXCARS)
          (t sum))))

(defun CRAPS ()
  (let* ((a-throw (THROW-DICE))
         (die1 (first a-throw))
         (die2 (second a-throw))
         (throw-sum (SAY-THROW a-throw)))
    (cond ((INSTANT-LOSS-P a-throw) (list 'THROW die1 'AND die2 '-- throw-sum '-- 'YOU 'LOSE))
          ((INSTANT-WIN-P a-throw) (list 'THROW die1 'AND die2 '-- throw-sum '-- 'YOU 'WIN))
          (t (list 'THROW die1 'AND die2 '-- 'YOUR 'POINT 'IS throw-sum)))))

(defun TRY-FOR-POINT (point)
  (let* ((a-throw (THROW-DICE))
         (die1 (first a-throw))
         (die2 (second a-throw))
         (sum (+ die1 die2)))
    (cond ((= sum 7) (list 'THROW die1 'AND die2 '-- sum '-- 'YOU 'LOSE))
          ((= sum point) (list 'THROW die1 'AND die2 '-- sum '-- 'YOU 'WIN))
          (t (list 'THROW die1 'AND die2 '-- sum '-- 'THROW 'AGAIN)))))