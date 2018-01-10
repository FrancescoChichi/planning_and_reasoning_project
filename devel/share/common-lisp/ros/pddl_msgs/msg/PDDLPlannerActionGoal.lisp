; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLPlannerActionGoal.msg.html

(cl:defclass <PDDLPlannerActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type pddl_msgs-msg:PDDLPlannerGoal
    :initform (cl:make-instance 'pddl_msgs-msg:PDDLPlannerGoal)))
)

(cl:defclass PDDLPlannerActionGoal (<PDDLPlannerActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLPlannerActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLPlannerActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLPlannerActionGoal> is deprecated: use pddl_msgs-msg:PDDLPlannerActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PDDLPlannerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:header-val is deprecated.  Use pddl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <PDDLPlannerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:goal_id-val is deprecated.  Use pddl_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PDDLPlannerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:goal-val is deprecated.  Use pddl_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLPlannerActionGoal>) ostream)
  "Serializes a message object of type '<PDDLPlannerActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLPlannerActionGoal>) istream)
  "Deserializes a message object of type '<PDDLPlannerActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLPlannerActionGoal>)))
  "Returns string type for a message object of type '<PDDLPlannerActionGoal>"
  "pddl_msgs/PDDLPlannerActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLPlannerActionGoal)))
  "Returns string type for a message object of type 'PDDLPlannerActionGoal"
  "pddl_msgs/PDDLPlannerActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLPlannerActionGoal>)))
  "Returns md5sum for a message object of type '<PDDLPlannerActionGoal>"
  "7c69076e821f69274e100df6d1edc7cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLPlannerActionGoal)))
  "Returns md5sum for a message object of type 'PDDLPlannerActionGoal"
  "7c69076e821f69274e100df6d1edc7cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLPlannerActionGoal>)))
  "Returns full string definition for message of type '<PDDLPlannerActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PDDLPlannerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pddl_msgs/PDDLPlannerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%pddl_msgs/PDDLDomain domain~%pddl_msgs/PDDLProblem problem~%~%================================================================================~%MSG: pddl_msgs/PDDLDomain~%string name~%string requirements~%string[] types~%string[] constants~%string[] predicates~%pddl_msgs/PDDLAction[] actions~%string[] functions~%~%================================================================================~%MSG: pddl_msgs/PDDLAction~%string name~%# write String in S expression like \"(and foo var)\"~%string parameters~%string precondition~%string effect~%string on_condition~%# we can't use duration name~%string action_duration~%================================================================================~%MSG: pddl_msgs/PDDLProblem~%string name          # name of problem~%string domain        # name of domain to use~%pddl_msgs/PDDLObject[] objects # how to represent type?~%string[] initial     # initial condition~%string goal          # goal conjunction~%string metric        # metric~%~%~%================================================================================~%MSG: pddl_msgs/PDDLObject~%# definition of PDDLObject~%string name~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLPlannerActionGoal)))
  "Returns full string definition for message of type 'PDDLPlannerActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PDDLPlannerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pddl_msgs/PDDLPlannerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%pddl_msgs/PDDLDomain domain~%pddl_msgs/PDDLProblem problem~%~%================================================================================~%MSG: pddl_msgs/PDDLDomain~%string name~%string requirements~%string[] types~%string[] constants~%string[] predicates~%pddl_msgs/PDDLAction[] actions~%string[] functions~%~%================================================================================~%MSG: pddl_msgs/PDDLAction~%string name~%# write String in S expression like \"(and foo var)\"~%string parameters~%string precondition~%string effect~%string on_condition~%# we can't use duration name~%string action_duration~%================================================================================~%MSG: pddl_msgs/PDDLProblem~%string name          # name of problem~%string domain        # name of domain to use~%pddl_msgs/PDDLObject[] objects # how to represent type?~%string[] initial     # initial condition~%string goal          # goal conjunction~%string metric        # metric~%~%~%================================================================================~%MSG: pddl_msgs/PDDLObject~%# definition of PDDLObject~%string name~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLPlannerActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLPlannerActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLPlannerActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
