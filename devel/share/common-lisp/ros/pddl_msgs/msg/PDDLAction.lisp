; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLAction.msg.html

(cl:defclass <PDDLAction> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (parameters
    :reader parameters
    :initarg :parameters
    :type cl:string
    :initform "")
   (precondition
    :reader precondition
    :initarg :precondition
    :type cl:string
    :initform "")
   (effect
    :reader effect
    :initarg :effect
    :type cl:string
    :initform "")
   (on_condition
    :reader on_condition
    :initarg :on_condition
    :type cl:string
    :initform "")
   (action_duration
    :reader action_duration
    :initarg :action_duration
    :type cl:string
    :initform ""))
)

(cl:defclass PDDLAction (<PDDLAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLAction> is deprecated: use pddl_msgs-msg:PDDLAction instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PDDLAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:name-val is deprecated.  Use pddl_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <PDDLAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:parameters-val is deprecated.  Use pddl_msgs-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'precondition-val :lambda-list '(m))
(cl:defmethod precondition-val ((m <PDDLAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:precondition-val is deprecated.  Use pddl_msgs-msg:precondition instead.")
  (precondition m))

(cl:ensure-generic-function 'effect-val :lambda-list '(m))
(cl:defmethod effect-val ((m <PDDLAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:effect-val is deprecated.  Use pddl_msgs-msg:effect instead.")
  (effect m))

(cl:ensure-generic-function 'on_condition-val :lambda-list '(m))
(cl:defmethod on_condition-val ((m <PDDLAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:on_condition-val is deprecated.  Use pddl_msgs-msg:on_condition instead.")
  (on_condition m))

(cl:ensure-generic-function 'action_duration-val :lambda-list '(m))
(cl:defmethod action_duration-val ((m <PDDLAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:action_duration-val is deprecated.  Use pddl_msgs-msg:action_duration instead.")
  (action_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLAction>) ostream)
  "Serializes a message object of type '<PDDLAction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameters))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'precondition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'precondition))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'effect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'effect))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'on_condition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'on_condition))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_duration))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLAction>) istream)
  "Deserializes a message object of type '<PDDLAction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'precondition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'precondition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'effect) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'effect) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'on_condition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'on_condition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_duration) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_duration) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLAction>)))
  "Returns string type for a message object of type '<PDDLAction>"
  "pddl_msgs/PDDLAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLAction)))
  "Returns string type for a message object of type 'PDDLAction"
  "pddl_msgs/PDDLAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLAction>)))
  "Returns md5sum for a message object of type '<PDDLAction>"
  "b7889bb912b39c8d55cfbda20fd28a0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLAction)))
  "Returns md5sum for a message object of type 'PDDLAction"
  "b7889bb912b39c8d55cfbda20fd28a0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLAction>)))
  "Returns full string definition for message of type '<PDDLAction>"
  (cl:format cl:nil "string name~%# write String in S expression like \"(and foo var)\"~%string parameters~%string precondition~%string effect~%string on_condition~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLAction)))
  "Returns full string definition for message of type 'PDDLAction"
  (cl:format cl:nil "string name~%# write String in S expression like \"(and foo var)\"~%string parameters~%string precondition~%string effect~%string on_condition~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLAction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'parameters))
     4 (cl:length (cl:slot-value msg 'precondition))
     4 (cl:length (cl:slot-value msg 'effect))
     4 (cl:length (cl:slot-value msg 'on_condition))
     4 (cl:length (cl:slot-value msg 'action_duration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLAction>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLAction
    (cl:cons ':name (name msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':precondition (precondition msg))
    (cl:cons ':effect (effect msg))
    (cl:cons ':on_condition (on_condition msg))
    (cl:cons ':action_duration (action_duration msg))
))
