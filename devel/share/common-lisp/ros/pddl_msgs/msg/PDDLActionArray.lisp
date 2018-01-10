; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLActionArray.msg.html

(cl:defclass <PDDLActionArray> (roslisp-msg-protocol:ros-message)
  ((actions
    :reader actions
    :initarg :actions
    :type (cl:vector pddl_msgs-msg:PDDLAction)
   :initform (cl:make-array 0 :element-type 'pddl_msgs-msg:PDDLAction :initial-element (cl:make-instance 'pddl_msgs-msg:PDDLAction))))
)

(cl:defclass PDDLActionArray (<PDDLActionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLActionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLActionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLActionArray> is deprecated: use pddl_msgs-msg:PDDLActionArray instead.")))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <PDDLActionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:actions-val is deprecated.  Use pddl_msgs-msg:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLActionArray>) ostream)
  "Serializes a message object of type '<PDDLActionArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLActionArray>) istream)
  "Deserializes a message object of type '<PDDLActionArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pddl_msgs-msg:PDDLAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLActionArray>)))
  "Returns string type for a message object of type '<PDDLActionArray>"
  "pddl_msgs/PDDLActionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLActionArray)))
  "Returns string type for a message object of type 'PDDLActionArray"
  "pddl_msgs/PDDLActionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLActionArray>)))
  "Returns md5sum for a message object of type '<PDDLActionArray>"
  "e99b1b4c780bc71e4f0a0e590a6217ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLActionArray)))
  "Returns md5sum for a message object of type 'PDDLActionArray"
  "e99b1b4c780bc71e4f0a0e590a6217ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLActionArray>)))
  "Returns full string definition for message of type '<PDDLActionArray>"
  (cl:format cl:nil "pddl_msgs/PDDLAction[] actions~%~%================================================================================~%MSG: pddl_msgs/PDDLAction~%string name~%# write String in S expression like \"(and foo var)\"~%string parameters~%string precondition~%string effect~%string on_condition~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLActionArray)))
  "Returns full string definition for message of type 'PDDLActionArray"
  (cl:format cl:nil "pddl_msgs/PDDLAction[] actions~%~%================================================================================~%MSG: pddl_msgs/PDDLAction~%string name~%# write String in S expression like \"(and foo var)\"~%string parameters~%string precondition~%string effect~%string on_condition~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLActionArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLActionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLActionArray
    (cl:cons ':actions (actions msg))
))
