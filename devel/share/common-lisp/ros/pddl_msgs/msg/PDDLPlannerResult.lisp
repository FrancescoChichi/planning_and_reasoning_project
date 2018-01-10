; Auto-generated. Do not edit!


(cl:in-package pddl_msgs-msg)


;//! \htmlinclude PDDLPlannerResult.msg.html

(cl:defclass <PDDLPlannerResult> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (use_durative_action
    :reader use_durative_action
    :initarg :use_durative_action
    :type cl:boolean
    :initform cl:nil)
   (sequence
    :reader sequence
    :initarg :sequence
    :type (cl:vector pddl_msgs-msg:PDDLStep)
   :initform (cl:make-array 0 :element-type 'pddl_msgs-msg:PDDLStep :initial-element (cl:make-instance 'pddl_msgs-msg:PDDLStep))))
)

(cl:defclass PDDLPlannerResult (<PDDLPlannerResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PDDLPlannerResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PDDLPlannerResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pddl_msgs-msg:<PDDLPlannerResult> is deprecated: use pddl_msgs-msg:PDDLPlannerResult instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <PDDLPlannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:data-val is deprecated.  Use pddl_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'use_durative_action-val :lambda-list '(m))
(cl:defmethod use_durative_action-val ((m <PDDLPlannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:use_durative_action-val is deprecated.  Use pddl_msgs-msg:use_durative_action instead.")
  (use_durative_action m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <PDDLPlannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pddl_msgs-msg:sequence-val is deprecated.  Use pddl_msgs-msg:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PDDLPlannerResult>) ostream)
  "Serializes a message object of type '<PDDLPlannerResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
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
   (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_durative_action) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sequence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sequence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PDDLPlannerResult>) istream)
  "Deserializes a message object of type '<PDDLPlannerResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'use_durative_action) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sequence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sequence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pddl_msgs-msg:PDDLStep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PDDLPlannerResult>)))
  "Returns string type for a message object of type '<PDDLPlannerResult>"
  "pddl_msgs/PDDLPlannerResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PDDLPlannerResult)))
  "Returns string type for a message object of type 'PDDLPlannerResult"
  "pddl_msgs/PDDLPlannerResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PDDLPlannerResult>)))
  "Returns md5sum for a message object of type '<PDDLPlannerResult>"
  "9220276db431d308099ea5d53fef9a9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PDDLPlannerResult)))
  "Returns md5sum for a message object of type 'PDDLPlannerResult"
  "9220276db431d308099ea5d53fef9a9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PDDLPlannerResult>)))
  "Returns full string definition for message of type '<PDDLPlannerResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%string[] data~%bool use_durative_action~%pddl_msgs/PDDLStep[] sequence~%~%================================================================================~%MSG: pddl_msgs/PDDLStep~%string action~%string[] args~%string start_time~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PDDLPlannerResult)))
  "Returns full string definition for message of type 'PDDLPlannerResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%string[] data~%bool use_durative_action~%pddl_msgs/PDDLStep[] sequence~%~%================================================================================~%MSG: pddl_msgs/PDDLStep~%string action~%string[] args~%string start_time~%# we can't use duration name~%string action_duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PDDLPlannerResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sequence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PDDLPlannerResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PDDLPlannerResult
    (cl:cons ':data (data msg))
    (cl:cons ':use_durative_action (use_durative_action msg))
    (cl:cons ':sequence (sequence msg))
))
