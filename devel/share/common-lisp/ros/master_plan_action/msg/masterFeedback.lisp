; Auto-generated. Do not edit!


(cl:in-package master_plan_action-msg)


;//! \htmlinclude masterFeedback.msg.html

(cl:defclass <masterFeedback> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type cl:float
    :initform 0.0))
)

(cl:defclass masterFeedback (<masterFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <masterFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'masterFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master_plan_action-msg:<masterFeedback> is deprecated: use master_plan_action-msg:masterFeedback instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <masterFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_plan_action-msg:goal-val is deprecated.  Use master_plan_action-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <masterFeedback>) ostream)
  "Serializes a message object of type '<masterFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <masterFeedback>) istream)
  "Deserializes a message object of type '<masterFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<masterFeedback>)))
  "Returns string type for a message object of type '<masterFeedback>"
  "master_plan_action/masterFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'masterFeedback)))
  "Returns string type for a message object of type 'masterFeedback"
  "master_plan_action/masterFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<masterFeedback>)))
  "Returns md5sum for a message object of type '<masterFeedback>"
  "96f1fc969cebfe9056357b5db1aa501e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'masterFeedback)))
  "Returns md5sum for a message object of type 'masterFeedback"
  "96f1fc969cebfe9056357b5db1aa501e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<masterFeedback>)))
  "Returns full string definition for message of type '<masterFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%float64 goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'masterFeedback)))
  "Returns full string definition for message of type 'masterFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%float64 goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <masterFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <masterFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'masterFeedback
    (cl:cons ':goal (goal msg))
))
