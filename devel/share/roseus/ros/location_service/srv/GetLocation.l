;; Auto-generated. Do not edit!


(when (boundp 'location_service::GetLocation)
  (if (not (find-package "LOCATION_SERVICE"))
    (make-package "LOCATION_SERVICE"))
  (shadow 'GetLocation (find-package "LOCATION_SERVICE")))
(unless (find-package "LOCATION_SERVICE::GETLOCATION")
  (make-package "LOCATION_SERVICE::GETLOCATION"))
(unless (find-package "LOCATION_SERVICE::GETLOCATIONREQUEST")
  (make-package "LOCATION_SERVICE::GETLOCATIONREQUEST"))
(unless (find-package "LOCATION_SERVICE::GETLOCATIONRESPONSE")
  (make-package "LOCATION_SERVICE::GETLOCATIONRESPONSE"))

(in-package "ROS")





(defclass location_service::GetLocationRequest
  :super ros::object
  :slots (_name ))

(defmethod location_service::GetLocationRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass location_service::GetLocationResponse
  :super ros::object
  :slots (_locations ))

(defmethod location_service::GetLocationResponse
  (:init
   (&key
    ((:locations __locations) (let (r) (dotimes (i 0) (push (instance location_service::Location :init) r)) r))
    )
   (send-super :init)
   (setq _locations __locations)
   self)
  (:locations
   (&rest __locations)
   (if (keywordp (car __locations))
       (send* _locations __locations)
     (progn
       (if __locations (setq _locations (car __locations)))
       _locations)))
  (:serialization-length
   ()
   (+
    ;; location_service/Location[] _locations
    (apply #'+ (send-all _locations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; location_service/Location[] _locations
     (write-long (length _locations) s)
     (dolist (elem _locations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; location_service/Location[] _locations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _locations (let (r) (dotimes (i n) (push (instance location_service::Location :init) r)) r))
     (dolist (elem- _locations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass location_service::GetLocation
  :super ros::object
  :slots ())

(setf (get location_service::GetLocation :md5sum-) "7df2426657da0f35bd560cd31d7ab56d")
(setf (get location_service::GetLocation :datatype-) "location_service/GetLocation")
(setf (get location_service::GetLocation :request) location_service::GetLocationRequest)
(setf (get location_service::GetLocation :response) location_service::GetLocationResponse)

(defmethod location_service::GetLocationRequest
  (:response () (instance location_service::GetLocationResponse :init)))

(setf (get location_service::GetLocationRequest :md5sum-) "7df2426657da0f35bd560cd31d7ab56d")
(setf (get location_service::GetLocationRequest :datatype-) "location_service/GetLocationRequest")
(setf (get location_service::GetLocationRequest :definition-)
      "string  name
---
Location[] locations


================================================================================
MSG: location_service/Location
string name
geometry_msgs/Pose  pose
sensor_msgs/LaserScan scan

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")

(setf (get location_service::GetLocationResponse :md5sum-) "7df2426657da0f35bd560cd31d7ab56d")
(setf (get location_service::GetLocationResponse :datatype-) "location_service/GetLocationResponse")
(setf (get location_service::GetLocationResponse :definition-)
      "string  name
---
Location[] locations


================================================================================
MSG: location_service/Location
string name
geometry_msgs/Pose  pose
sensor_msgs/LaserScan scan

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")



(provide :location_service/GetLocation "7df2426657da0f35bd560cd31d7ab56d")


