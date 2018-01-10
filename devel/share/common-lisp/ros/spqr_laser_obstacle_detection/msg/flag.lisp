; Auto-generated. Do not edit!


(cl:in-package spqr_laser_obstacle_detection-msg)


;//! \htmlinclude flag.msg.html

(cl:defclass <flag> (roslisp-msg-protocol:ros-message)
  ((detected
    :reader detected
    :initarg :detected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass flag (<flag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <flag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'flag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spqr_laser_obstacle_detection-msg:<flag> is deprecated: use spqr_laser_obstacle_detection-msg:flag instead.")))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spqr_laser_obstacle_detection-msg:detected-val is deprecated.  Use spqr_laser_obstacle_detection-msg:detected instead.")
  (detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <flag>) ostream)
  "Serializes a message object of type '<flag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <flag>) istream)
  "Deserializes a message object of type '<flag>"
    (cl:setf (cl:slot-value msg 'detected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<flag>)))
  "Returns string type for a message object of type '<flag>"
  "spqr_laser_obstacle_detection/flag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'flag)))
  "Returns string type for a message object of type 'flag"
  "spqr_laser_obstacle_detection/flag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<flag>)))
  "Returns md5sum for a message object of type '<flag>"
  "2d8633c53221d40413712b55b8360a15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'flag)))
  "Returns md5sum for a message object of type 'flag"
  "2d8633c53221d40413712b55b8360a15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<flag>)))
  "Returns full string definition for message of type '<flag>"
  (cl:format cl:nil "bool detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'flag)))
  "Returns full string definition for message of type 'flag"
  (cl:format cl:nil "bool detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <flag>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <flag>))
  "Converts a ROS message object to a list"
  (cl:list 'flag
    (cl:cons ':detected (detected msg))
))
