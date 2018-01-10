;; Auto-generated. Do not edit!


(when (boundp 'pddl_msgs::PDDLAction)
  (if (not (find-package "PDDL_MSGS"))
    (make-package "PDDL_MSGS"))
  (shadow 'PDDLAction (find-package "PDDL_MSGS")))
(unless (find-package "PDDL_MSGS::PDDLACTION")
  (make-package "PDDL_MSGS::PDDLACTION"))

(in-package "ROS")
;;//! \htmlinclude PDDLAction.msg.html


(defclass pddl_msgs::PDDLAction
  :super ros::object
  :slots (_name _parameters _precondition _effect _on_condition _action_duration ))

(defmethod pddl_msgs::PDDLAction
  (:init
   (&key
    ((:name __name) "")
    ((:parameters __parameters) "")
    ((:precondition __precondition) "")
    ((:effect __effect) "")
    ((:on_condition __on_condition) "")
    ((:action_duration __action_duration) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _parameters (string __parameters))
   (setq _precondition (string __precondition))
   (setq _effect (string __effect))
   (setq _on_condition (string __on_condition))
   (setq _action_duration (string __action_duration))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:precondition
   (&optional __precondition)
   (if __precondition (setq _precondition __precondition)) _precondition)
  (:effect
   (&optional __effect)
   (if __effect (setq _effect __effect)) _effect)
  (:on_condition
   (&optional __on_condition)
   (if __on_condition (setq _on_condition __on_condition)) _on_condition)
  (:action_duration
   (&optional __action_duration)
   (if __action_duration (setq _action_duration __action_duration)) _action_duration)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _parameters
    4 (length _parameters)
    ;; string _precondition
    4 (length _precondition)
    ;; string _effect
    4 (length _effect)
    ;; string _on_condition
    4 (length _on_condition)
    ;; string _action_duration
    4 (length _action_duration)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _parameters
       (write-long (length _parameters) s) (princ _parameters s)
     ;; string _precondition
       (write-long (length _precondition) s) (princ _precondition s)
     ;; string _effect
       (write-long (length _effect) s) (princ _effect s)
     ;; string _on_condition
       (write-long (length _on_condition) s) (princ _on_condition s)
     ;; string _action_duration
       (write-long (length _action_duration) s) (princ _action_duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parameters
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameters (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _precondition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _precondition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _effect
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _effect (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _on_condition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _on_condition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_duration
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_duration (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pddl_msgs::PDDLAction :md5sum-) "b7889bb912b39c8d55cfbda20fd28a0a")
(setf (get pddl_msgs::PDDLAction :datatype-) "pddl_msgs/PDDLAction")
(setf (get pddl_msgs::PDDLAction :definition-)
      "string name
# write String in S expression like \"(and foo var)\"
string parameters
string precondition
string effect
string on_condition
# we can't use duration name
string action_duration
")



(provide :pddl_msgs/PDDLAction "b7889bb912b39c8d55cfbda20fd28a0a")


