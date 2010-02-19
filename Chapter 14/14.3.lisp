(defmacro set-nil (var)
  (list 'setf var 'nil))
