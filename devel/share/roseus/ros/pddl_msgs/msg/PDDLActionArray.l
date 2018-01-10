;; Auto-generated. Do not edit!


(when (boundp 'pddl_msgs::PDDLActionArray)
  (if (not (find-package "PDDL_MSGS"))
    (make-package "PDDL_MSGS"))
  (shadow 'PDDLActionArray (find-package "PDDL_MSGS")))
(unless (find-package "PDDL_MSGS::PDDLACTIONARRAY")
  (make-package "PDDL_MSGS::PDDLACTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude PDDLActionArray.msg.html


(defclass pddl_msgs::PDDLActionArray
  :super ros::object
  :slots (_actions ))

(defmethod pddl_msgs::PDDLActionArray
  (:init
   (&key
    ((:actions __actions) (let (r) (dotimes (i 0) (push (instance pddl_msgs::PDDLAction :init) r)) r))
    )
   (send-super :init)
   (setq _actions __actions)
   self)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; pddl_msgs/PDDLAction[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pddl_msgs/PDDLAction[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pddl_msgs/PDDLAction[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance pddl_msgs::PDDLAction :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pddl_msgs::PDDLActionArray :md5sum-) "e99b1b4c780bc71e4f0a0e590a6217ed")
(setf (get pddl_msgs::PDDLActionArray :datatype-) "pddl_msgs/PDDLActionArray")
(setf (get pddl_msgs::PDDLActionArray :definition-)
      "pddl_msgs/PDDLAction[] actions

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



(provide :pddl_msgs/PDDLActionArray "e99b1b4c780bc71e4f0a0e590a6217ed")


