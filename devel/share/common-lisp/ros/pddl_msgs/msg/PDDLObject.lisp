; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLObject.msg.html

(cl:defclass <PDDLObject> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass PDDLObject (<PDDLObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLObject> is deprecated: use pddl_msgs-msg:PDDLObject instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PDDLObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:name-val is deprecated.  Use pddl_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PDDLObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:type-val is deprecated.  Use pddl_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLObject>) ostream)
  "Serializes a message object of type '<PDDLObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLObject>) istream)
  "Deserializes a message object of type '<PDDLObject>"
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
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLObject>)))
  "Returns string type for a message object of type '<PDDLObject>"
  "pddl_msgs/PDDLObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLObject)))
  "Returns string type for a message object of type 'PDDLObject"
  "pddl_msgs/PDDLObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLObject>)))
  "Returns md5sum for a message object of type '<PDDLObject>"
  "8f11915b22b276d2fb5587b35400289d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLObject)))
  "Returns md5sum for a message object of type 'PDDLObject"
  "8f11915b22b276d2fb5587b35400289d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLObject>)))
  "Returns full string definition for message of type '<PDDLObject>"
  (cl:format cl:nil "# definition of PDDLObject~%string name~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLObject)))
  "Returns full string definition for message of type 'PDDLObject"
  (cl:format cl:nil "# definition of PDDLObject~%string name~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLObject>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLObject
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
))
