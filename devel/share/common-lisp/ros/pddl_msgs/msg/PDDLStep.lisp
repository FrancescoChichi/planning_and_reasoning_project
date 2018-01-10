; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLStep.msg.html

(cl:defclass <PDDLStep> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:string
    :initform "")
   (action_duration
    :reader action_duration
    :initarg :action_duration
    :type cl:string
    :initform ""))
)

(cl:defclass PDDLStep (<PDDLStep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLStep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLStep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLStep> is deprecated: use pddl_msgs-msg:PDDLStep instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PDDLStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:action-val is deprecated.  Use pddl_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <PDDLStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:args-val is deprecated.  Use pddl_msgs-msg:args instead.")
  (args m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <PDDLStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:start_time-val is deprecated.  Use pddl_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'action_duration-val :lambda-list '(m))
(cl:defmethod action_duration-val ((m <PDDLStep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:action_duration-val is deprecated.  Use pddl_msgs-msg:action_duration instead.")
  (action_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLStep>) ostream)
  "Serializes a message object of type '<PDDLStep>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'args))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_duration))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLStep>) istream)
  "Deserializes a message object of type '<PDDLStep>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLStep>)))
  "Returns string type for a message object of type '<PDDLStep>"
  "pddl_msgs/PDDLStep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLStep)))
  "Returns string type for a message object of type 'PDDLStep"
  "pddl_msgs/PDDLStep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLStep>)))
  "Returns md5sum for a message object of type '<PDDLStep>"
  "d79a0663dfa206e7ac7a0755c6d1e154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLStep)))
  "Returns md5sum for a message object of type 'PDDLStep"
  "d79a0663dfa206e7ac7a0755c6d1e154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLStep>)))
  "Returns full string definition for message of type '<PDDLStep>"
  (cl:format cl:nil "string action~%string[] args~%string start_time~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLStep)))
  "Returns full string definition for message of type 'PDDLStep"
  (cl:format cl:nil "string action~%string[] args~%string start_time~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLStep>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'start_time))
     4 (cl:length (cl:slot-value msg 'action_duration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLStep>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLStep
    (cl:cons ':action (action msg))
    (cl:cons ':args (args msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':action_duration (action_duration msg))
))
