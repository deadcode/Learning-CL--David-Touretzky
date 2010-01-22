(defun NOR (x y)
  (NOT (OR x y)))

(defun NOT2 (x)
  (NOR x x))

(defun LOGICAL-AND (x y)
  (NOR (NOR x x) (NOR y y)))

(defun LOGICAL-OR (x y)
  (NOR (NOR x y) (NOR x y)))

(defun LOGICAL-NAND (x y)
  (NOT2 (LOGICAL-AND x y)))

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
(format t "~s = ~s~%" '(LOGICAL-NAND nil nil) (LOGICAL-NAND nil nil))
(format t "~s = ~s~%" '(LOGICAL-NAND nil t) (LOGICAL-NAND nil t))
(format t "~s = ~s~%" '(LOGICAL-NAND t nil) (LOGICAL-NAND t nil))
(format t "~s = ~s~%" '(LOGICAL-nAND t t) (LOGICAL-NAND t t))
