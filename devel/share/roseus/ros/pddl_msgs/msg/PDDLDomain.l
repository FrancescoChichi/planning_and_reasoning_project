;; Auto-generated. Do not edit!


(when (boundp 'pddl_msgs::PDDLDomain)
  (if (not (find-package "PDDL_MSGS"))
    (make-package "PDDL_MSGS"))
  (shadow 'PDDLDomain (find-package "PDDL_MSGS")))
(unless (find-package "PDDL_MSGS::PDDLDOMAIN")
  (make-package "PDDL_MSGS::PDDLDOMAIN"))

(in-package "ROS")
;;//! \htmlinclude PDDLDomain.msg.html


(defclass pddl_msgs::PDDLDomain
  :super ros::object
  :slots (_name _requirements _types _constants _predicates _actions _functions ))

(defmethod pddl_msgs::PDDLDomain
  (:init
   (&key
    ((:name __name) "")
    ((:requirements __requirements) "")
    ((:types __types) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:constants __constants) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:predicates __predicates) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:actions __actions) (let (r) (dotimes (i 0) (push (instance pddl_msgs::PDDLAction :init) r)) r))
    ((:functions __functions) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _requirements (string __requirements))
   (setq _types __types)
   (setq _constants __constants)
   (setq _predicates __predicates)
   (setq _actions __actions)
   (setq _functions __functions)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:requirements
   (&optional __requirements)
   (if __requirements (setq _requirements __requirements)) _requirements)
  (:types
   (&optional __types)
   (if __types (setq _types __types)) _types)
  (:constants
   (&optional __constants)
   (if __constants (setq _constants __constants)) _constants)
  (:predicates
   (&optional __predicates)
   (if __predicates (setq _predicates __predicates)) _predicates)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:functions
   (&optional __functions)
   (if __functions (setq _functions __functions)) _functions)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _requirements
    4 (length _requirements)
    ;; string[] _types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _types)) 4
    ;; string[] _constants
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _constants)) 4
    ;; string[] _predicates
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _predicates)) 4
    ;; pddl_msgs/PDDLAction[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ;; string[] _functions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _functions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _requirements
       (write-long (length _requirements) s) (princ _requirements s)
     ;; string[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _constants
     (write-long (length _constants) s)
     (dolist (elem _constants)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _predicates
     (write-long (length _predicates) s)
     (dolist (elem _predicates)
       (write-long (length elem) s) (princ elem s)
       )
     ;; pddl_msgs/PDDLAction[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;; string[] _functions
     (write-long (length _functions) s)
     (dolist (elem _functions)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _requirements
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _requirements (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _constants
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constants (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _constants i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _predicates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predicates (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _predicates i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; pddl_msgs/PDDLAction[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance pddl_msgs::PDDLAction :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _functions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _functions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _functions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get pddl_msgs::PDDLDomain :md5sum-) "1db1abf7dbdf3e62fc55c75c4b365253")
(setf (get pddl_msgs::PDDLDomain :datatype-) "pddl_msgs/PDDLDomain")
(setf (get pddl_msgs::PDDLDomain :definition-)
      "string name
string requirements
string[] types
string[] constants
string[] predicates
pddl_msgs/PDDLAction[] actions
string[] functions

================================================================================
MSG: pddl_msgs/PDDLAction
string name
# write String in S expression like \"(and foo var)\"
string parameters
string precondition
string effect
string on_condition
# we can't use duration name
string action_duration
")



(provide :pddl_msgs/PDDLDomain "1db1abf7dbdf3e62fc55c75c4b365253")


