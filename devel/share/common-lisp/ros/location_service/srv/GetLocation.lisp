; Auto-generated. Do not edit!


(cl:in-package location_service-srv)


;//! \htmlinclude GetLocation-request.msg.html

(cl:defclass <GetLocation-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetLocation-request (<GetLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name location_service-srv:<GetLocation-request> is deprecated: use location_service-srv:GetLocation-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader location_service-srv:name-val is deprecated.  Use location_service-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocation-request>) ostream)
  "Serializes a message object of type '<GetLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocation-request>) istream)
  "Deserializes a message object of type '<GetLocation-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocation-request>)))
  "Returns string type for a service object of type '<GetLocation-request>"
  "location_service/GetLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocation-request)))
  "Returns string type for a service object of type 'GetLocation-request"
  "location_service/GetLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocation-request>)))
  "Returns md5sum for a message object of type '<GetLocation-request>"
  "7df2426657da0f35bd560cd31d7ab56d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocation-request)))
  "Returns md5sum for a message object of type 'GetLocation-request"
  "7df2426657da0f35bd560cd31d7ab56d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocation-request>)))
  "Returns full string definition for message of type '<GetLocation-request>"
  (cl:format cl:nil "string  name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocation-request)))
  "Returns full string definition for message of type 'GetLocation-request"
  (cl:format cl:nil "string  name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocation-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetLocation-response.msg.html

(cl:defclass <GetLocation-response> (roslisp-msg-protocol:ros-message)
  ((locations
    :reader locations
    :initarg :locations
    :type (cl:vector location_service-msg:Location)
   :initform (cl:make-array 0 :element-type 'location_service-msg:Location :initial-element (cl:make-instance 'location_service-msg:Location))))
)

(cl:defclass GetLocation-response (<GetLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name location_service-srv:<GetLocation-response> is deprecated: use location_service-srv:GetLocation-response instead.")))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <GetLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader location_service-srv:locations-val is deprecated.  Use location_service-srv:locations instead.")
  (locations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocation-response>) ostream)
  "Serializes a message object of type '<GetLocation-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'locations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocation-response>) istream)
  "Deserializes a message object of type '<GetLocation-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'location_service-msg:Location))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocation-response>)))
  "Returns string type for a service object of type '<GetLocation-response>"
  "location_service/GetLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocation-response)))
  "Returns string type for a service object of type 'GetLocation-response"
  "location_service/GetLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocation-response>)))
  "Returns md5sum for a message object of type '<GetLocation-response>"
  "7df2426657da0f35bd560cd31d7ab56d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocation-response)))
  "Returns md5sum for a message object of type 'GetLocation-response"
  "7df2426657da0f35bd560cd31d7ab56d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocation-response>)))
  "Returns full string definition for message of type '<GetLocation-response>"
  (cl:format cl:nil "Location[] locations~%~%~%================================================================================~%MSG: location_service/Location~%string name~%geometry_msgs/Pose  pose~%sensor_msgs/LaserScan scan~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocation-response)))
  "Returns full string definition for message of type 'GetLocation-response"
  (cl:format cl:nil "Location[] locations~%~%~%================================================================================~%MSG: location_service/Location~%string name~%geometry_msgs/Pose  pose~%sensor_msgs/LaserScan scan~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocation-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocation-response
    (cl:cons ':locations (locations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocation)))
  'GetLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocation)))
  'GetLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocation)))
  "Returns string type for a service object of type '<GetLocation>"
  "location_service/GetLocation")