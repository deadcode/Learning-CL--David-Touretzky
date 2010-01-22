(defun NAND (x y)
  (NOT (AND x y)))

(defun NOT2 (x)
  (NAND x x))

(defun LOGICAL-AND (x y)
  (NAND (NAND x y) (NAND x y)))

(defun LOGICAL-OR (x y)
  (NAND (NAND x x) (NAND y y)))

(format t "~s = ~s~%" '(NOT2 nil) (NOT2 nil))
(format t "~s = ~s~%" '(NOT2 t) (NOT2 t))
(format t "~s = ~s~%" '(LOGICAL-AND nil nil) (LOGICAL-AND nil nil))
(format t "~s = ~s~%" '(LOGICAL-AND nil t) (LOGICAL-AND nil t))
(format t "~s = ~s~%" '(LOGICAL-AND t nil) (LOGICAL-AND t nil))
(format t "~s = ~s~%" '(LOGICAL-AND t t) (LOGICAL-AND t t))
(format t "~s = ~s~%" '(LOGICAL-OR nil nil) (LOGICAL-OR nil nil))
(format t "~s = ~s~%" '(LOGICAL-OR nil t) (LOGICAL-OR nil t))
(format t "~s = ~s~%" '(LOGICAL-OR t nil) (LOGICAL-OR t nil))
(format t "~s = ~s~%" '(LOGICAL-OR t t) (LOGICAL-OR t t))
