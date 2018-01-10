; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLProblem.msg.html

(cl:defclass <PDDLProblem> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (domain
    :reader domain
    :initarg :domain
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector pddl_msgs-msg:PDDLObject)
   :initform (cl:make-array 0 :element-type 'pddl_msgs-msg:PDDLObject :initial-element (cl:make-instance 'pddl_msgs-msg:PDDLObject)))
   (initial
    :reader initial
    :initarg :initial
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (goal
    :reader goal
    :initarg :goal
    :type cl:string
    :initform "")
   (metric
    :reader metric
    :initarg :metric
    :type cl:string
    :initform ""))
)

(cl:defclass PDDLProblem (<PDDLProblem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLProblem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLProblem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLProblem> is deprecated: use pddl_msgs-msg:PDDLProblem instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PDDLProblem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:name-val is deprecated.  Use pddl_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'domain-val :lambda-list '(m))
(cl:defmethod domain-val ((m <PDDLProblem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:domain-val is deprecated.  Use pddl_msgs-msg:domain instead.")
  (domain m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <PDDLProblem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:objects-val is deprecated.  Use pddl_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'initial-val :lambda-list '(m))
(cl:defmethod initial-val ((m <PDDLProblem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:initial-val is deprecated.  Use pddl_msgs-msg:initial instead.")
  (initial m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PDDLProblem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:goal-val is deprecated.  Use pddl_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'metric-val :lambda-list '(m))
(cl:defmethod metric-val ((m <PDDLProblem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:metric-val is deprecated.  Use pddl_msgs-msg:metric instead.")
  (metric m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLProblem>) ostream)
  "Serializes a message object of type '<PDDLProblem>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'domain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'domain))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'initial))))
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
   (cl:slot-value msg 'initial))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'metric))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'metric))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLProblem>) istream)
  "Deserializes a message object of type '<PDDLProblem>"
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
      (cl:setf (cl:slot-value msg 'domain) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'domain) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pddl_msgs-msg:PDDLObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'initial) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'initial)))
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
      (cl:setf (cl:slot-value msg 'goal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'metric) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'metric) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLProblem>)))
  "Returns string type for a message object of type '<PDDLProblem>"
  "pddl_msgs/PDDLProblem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLProblem)))
  "Returns string type for a message object of type 'PDDLProblem"
  "pddl_msgs/PDDLProblem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLProblem>)))
  "Returns md5sum for a message object of type '<PDDLProblem>"
  "dfd9bdd094d91245128f960694763882")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLProblem)))
  "Returns md5sum for a message object of type 'PDDLProblem"
  "dfd9bdd094d91245128f960694763882")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLProblem>)))
  "Returns full string definition for message of type '<PDDLProblem>"
  (cl:format cl:nil "string name          # name of problem~%string domain        # name of domain to use~%pddl_msgs/PDDLObject[] objects # how to represent type?~%string[] initial     # initial condition~%string goal          # goal conjunction~%string metric        # metric~%~%~%================================================================================~%MSG: pddl_msgs/PDDLObject~%# definition of PDDLObject~%string name~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLProblem)))
  "Returns full string definition for message of type 'PDDLProblem"
  (cl:format cl:nil "string name          # name of problem~%string domain        # name of domain to use~%pddl_msgs/PDDLObject[] objects # how to represent type?~%string[] initial     # initial condition~%string goal          # goal conjunction~%string metric        # metric~%~%~%================================================================================~%MSG: pddl_msgs/PDDLObject~%# definition of PDDLObject~%string name~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLProblem>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'domain))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'initial) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'goal))
     4 (cl:length (cl:slot-value msg 'metric))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLProblem>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLProblem
    (cl:cons ':name (name msg))
    (cl:cons ':domain (domain msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':initial (initial msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':metric (metric msg))
))
