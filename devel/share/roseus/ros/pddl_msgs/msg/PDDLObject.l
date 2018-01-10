;; Auto-generated. Do not edit!


(when (boundp 'pddl_msgs::PDDLObject)
  (if (not (find-package "PDDL_MSGS"))
    (make-package "PDDL_MSGS"))
  (shadow 'PDDLObject (find-package "PDDL_MSGS")))
(unless (find-package "PDDL_MSGS::PDDLOBJECT")
  (make-package "PDDL_MSGS::PDDLOBJECT"))

(in-package "ROS")
;;//! \htmlinclude PDDLObject.msg.html


(defclass pddl_msgs::PDDLObject
  :super ros::object
  :slots (_name _type ))

(defmethod pddl_msgs::PDDLObject
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pddl_msgs::PDDLObject :md5sum-) "8f11915b22b276d2fb5587b35400289d")
(setf (get pddl_msgs::PDDLObject :datatype-) "pddl_msgs/PDDLObject")
(setf (get pddl_msgs::PDDLObject :definition-)
      "# definition of PDDLObject
string name
string type

")



(provide :pddl_msgs/PDDLObject "8f11915b22b276d2fb5587b35400289d")


