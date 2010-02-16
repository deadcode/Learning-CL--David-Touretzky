(defstruct node
  (name nil)
  (question nil)
  (yes-case nil)
  (no-case nil))

(setf *node-list* nil)
(defun init ()
  (setf *node-list* nil))

(defun add-node (name question yes-action no-action)
  (push (make-node :name name
                   :question question
                   :yes-case yes-action
                   :no-case no-action) *node-list*))

(add-node 'start
          "Does the engine turn over?"
          'engine-turns-over
          'engine-wont-turn-over)

(add-node 'engine-turns-over
          "Will the engine run for any period of time?"
          'engine-will-run-briefly
          'engine-wont-run)

(add-node 'engine-wont-run
          "Is there gas in the tank?"
          'gas-in-tank
          "Fill the tank and try starting the engine again.")

(add-node 'engine-wont-turn-over
          "Do you hear any sound when you turn the key?"
          'sound-when-turn-key
          'no-sound-when-turn-key)

(add-node 'no-sound-when-turn-key
          "Is the battery voltage low?"
          "Replace the battery"
          'battery-voltage-ok)

(add-node 'battery-voltage-ok
          "Are the battery cables dirty or loose?"
          "Clean the cables and tighten the connections."
          'battery-cables-good)

(defun find-node (name)
  (dolist (n *node-list*)
    (when (equal (node-name n) name)
      (return-from find-node n))))

(defun process-node (name)
  (let ((n (find-node name)))
    (when (null n)
      (format t "~&Node ~s node yet defined." name)
      (return-from process-node nil))
    (if (yes-or-no-p (node-question n))
      (return-from process-node (node-yes-case n))
      (return-from process-node (node-no-case n)))))

(defun run ()
  (do ((current-node 'start (process-node current-node)))
    ((null current-node) nil)
    (when (stringp current-node)
      (format t "~&~A" current-node)
      (return-from run nil))))

(defun get-node ()
  (labels ((read-input (what what-type type-name)
                       (do ((inp nil))
                         (nil)
                         (format t "~&Please enter the ~A: " what)
                         (setf inp (read))
                         (if (funcall what-type inp)
                           (return-from read-input inp))
                         (format t "~&Not the expected type (~A). Try again." type-name))))
    (let ((name (read-input "node name" #'symbolp "symbol"))
          (question (read-input "question" #'stringp "string"))
          (yes-action (read-input "yes action"
                                  #'(lambda (inp) (or (stringp inp)(symbolp inp)))
                                  "string or symbol"))
          (no-action (read-input "no action"
                                 #'(lambda (inp) (or (stringp inp)(symbolp inp)))
                                 "string or symbol")))
      (add-node name question yes-action no-action))))
