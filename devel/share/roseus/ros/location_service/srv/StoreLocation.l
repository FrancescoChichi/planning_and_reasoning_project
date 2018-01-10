;; Auto-generated. Do not edit!


(when (boundp 'location_service::StoreLocation)
  (if (not (find-package "LOCATION_SERVICE"))
    (make-package "LOCATION_SERVICE"))
  (shadow 'StoreLocation (find-package "LOCATION_SERVICE")))
(unless (find-package "LOCATION_SERVICE::STORELOCATION")
  (make-package "LOCATION_SERVICE::STORELOCATION"))
(unless (find-package "LOCATION_SERVICE::STORELOCATIONREQUEST")
  (make-package "LOCATION_SERVICE::STORELOCATIONREQUEST"))
(unless (find-package "LOCATION_SERVICE::STORELOCATIONRESPONSE")
  (make-package "LOCATION_SERVICE::STORELOCATIONRESPONSE"))

(in-package "ROS")





(defclass location_service::StoreLocationRequest
  :super ros::object
  :slots (_name ))

(defmethod location_service::StoreLocationRequest
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

(defclass location_service::StoreLocationResponse
  :super ros::object
  :slots (_success _reason ))

(defmethod location_service::StoreLocationResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:reason __reason) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _reason (string __reason))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _reason
    4 (length _reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _reason
       (write-long (length _reason) s) (princ _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass location_service::StoreLocation
  :super ros::object
  :slots ())

(setf (get location_service::StoreLocation :md5sum-) "d0a9c8b4beae30145a913b9f2a6cd3ab")
(setf (get location_service::StoreLocation :datatype-) "location_service/StoreLocation")
(setf (get location_service::StoreLocation :request) location_service::StoreLocationRequest)
(setf (get location_service::StoreLocation :response) location_service::StoreLocationResponse)

(defmethod location_service::StoreLocationRequest
  (:response () (instance location_service::StoreLocationResponse :init)))

(setf (get location_service::StoreLocationRequest :md5sum-) "d0a9c8b4beae30145a913b9f2a6cd3ab")
(setf (get location_service::StoreLocationRequest :datatype-) "location_service/StoreLocationRequest")
(setf (get location_service::StoreLocationRequest :definition-)
      "
string  name
---

bool  success
string reason

")

(setf (get location_service::StoreLocationResponse :md5sum-) "d0a9c8b4beae30145a913b9f2a6cd3ab")
(setf (get location_service::StoreLocationResponse :datatype-) "location_service/StoreLocationResponse")
(setf (get location_service::StoreLocationResponse :definition-)
      "
string  name
---

bool  success
string reason

")



(provide :location_service/StoreLocation "d0a9c8b4beae30145a913b9f2a6cd3ab")


