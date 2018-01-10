; Auto-generated. Do not edit!


(cl:in-package location_service-srv)


;//! \htmlinclude StoreLocation-request.msg.html

(cl:defclass <StoreLocation-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass StoreLocation-request (<StoreLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StoreLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StoreLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name location_service-srv:<StoreLocation-request> is deprecated: use location_service-srv:StoreLocation-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <StoreLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader location_service-srv:name-val is deprecated.  Use location_service-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StoreLocation-request>) ostream)
  "Serializes a message object of type '<StoreLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StoreLocation-request>) istream)
  "Deserializes a message object of type '<StoreLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StoreLocation-request>)))
  "Returns string type for a service object of type '<StoreLocation-request>"
  "location_service/StoreLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreLocation-request)))
  "Returns string type for a service object of type 'StoreLocation-request"
  "location_service/StoreLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StoreLocation-request>)))
  "Returns md5sum for a message object of type '<StoreLocation-request>"
  "d0a9c8b4beae30145a913b9f2a6cd3ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StoreLocation-request)))
  "Returns md5sum for a message object of type 'StoreLocation-request"
  "d0a9c8b4beae30145a913b9f2a6cd3ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StoreLocation-request>)))
  "Returns full string definition for message of type '<StoreLocation-request>"
  (cl:format cl:nil "~%string  name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StoreLocation-request)))
  "Returns full string definition for message of type 'StoreLocation-request"
  (cl:format cl:nil "~%string  name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StoreLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StoreLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StoreLocation-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude StoreLocation-response.msg.html

(cl:defclass <StoreLocation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (reason
    :reader reason
    :initarg :reason
    :type cl:string
    :initform ""))
)

(cl:defclass StoreLocation-response (<StoreLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StoreLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StoreLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name location_service-srv:<StoreLocation-response> is deprecated: use location_service-srv:StoreLocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StoreLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader location_service-srv:success-val is deprecated.  Use location_service-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <StoreLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader location_service-srv:reason-val is deprecated.  Use location_service-srv:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StoreLocation-response>) ostream)
  "Serializes a message object of type '<StoreLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StoreLocation-response>) istream)
  "Deserializes a message object of type '<StoreLocation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StoreLocation-response>)))
  "Returns string type for a service object of type '<StoreLocation-response>"
  "location_service/StoreLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreLocation-response)))
  "Returns string type for a service object of type 'StoreLocation-response"
  "location_service/StoreLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StoreLocation-response>)))
  "Returns md5sum for a message object of type '<StoreLocation-response>"
  "d0a9c8b4beae30145a913b9f2a6cd3ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StoreLocation-response)))
  "Returns md5sum for a message object of type 'StoreLocation-response"
  "d0a9c8b4beae30145a913b9f2a6cd3ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StoreLocation-response>)))
  "Returns full string definition for message of type '<StoreLocation-response>"
  (cl:format cl:nil "~%bool  success~%string reason~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StoreLocation-response)))
  "Returns full string definition for message of type 'StoreLocation-response"
  (cl:format cl:nil "~%bool  success~%string reason~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StoreLocation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StoreLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StoreLocation-response
    (cl:cons ':success (success msg))
    (cl:cons ':reason (reason msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StoreLocation)))
  'StoreLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StoreLocation)))
  'StoreLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreLocation)))
  "Returns string type for a service object of type '<StoreLocation>"
  "location_service/StoreLocation")