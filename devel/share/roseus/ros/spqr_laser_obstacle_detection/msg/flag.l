;; Auto-generated. Do not edit!


(when (boundp 'spqr_laser_obstacle_detection::flag)
  (if (not (find-package "SPQR_LASER_OBSTACLE_DETECTION"))
    (make-package "SPQR_LASER_OBSTACLE_DETECTION"))
  (shadow 'flag (find-package "SPQR_LASER_OBSTACLE_DETECTION")))
(unless (find-package "SPQR_LASER_OBSTACLE_DETECTION::FLAG")
  (make-package "SPQR_LASER_OBSTACLE_DETECTION::FLAG"))

(in-package "ROS")
;;//! \htmlinclude flag.msg.html


(defclass spqr_laser_obstacle_detection::flag
  :super ros::object
  :slots (_detected ))

(defmethod spqr_laser_obstacle_detection::flag
  (:init
   (&key
    ((:detected __detected) nil)
    )
   (send-super :init)
   (setq _detected __detected)
   self)
  (:detected
   (&optional __detected)
   (if __detected (setq _detected __detected)) _detected)
  (:serialization-length
   ()
   (+
    ;; bool _detected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _detected
       (if _detected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _detected
     (setq _detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get spqr_laser_obstacle_detection::flag :md5sum-) "2d8633c53221d40413712b55b8360a15")
(setf (get spqr_laser_obstacle_detection::flag :datatype-) "spqr_laser_obstacle_detection/flag")
(setf (get spqr_laser_obstacle_detection::flag :definition-)
      "bool detected


")



(provide :spqr_laser_obstacle_detection/flag "2d8633c53221d40413712b55b8360a15")


