;; Auto-generated. Do not edit!


(when (boundp 'pddl_msgs::PDDLStep)
  (if (not (find-package "PDDL_MSGS"))
    (make-package "PDDL_MSGS"))
  (shadow 'PDDLStep (find-package "PDDL_MSGS")))
(unless (find-package "PDDL_MSGS::PDDLSTEP")
  (make-package "PDDL_MSGS::PDDLSTEP"))

(in-package "ROS")
;;//! \htmlinclude PDDLStep.msg.html


(defclass pddl_msgs::PDDLStep
  :super ros::object
  :slots (_action _args _start_time _action_duration ))

(defmethod pddl_msgs::PDDLStep
  (:init
   (&key
    ((:action __action) "")
    ((:args __args) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:start_time __start_time) "")
    ((:action_duration __action_duration) "")
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _args __args)
   (setq _start_time (string __start_time))
   (setq _action_duration (string __action_duration))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:action_duration
   (&optional __action_duration)
   (if __action_duration (setq _action_duration __action_duration)) _action_duration)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string[] _args
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _args)) 4
    ;; string _start_time
    4 (length _start_time)
    ;; string _action_duration
    4 (length _action_duration)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string[] _args
     (write-long (length _args) s)
     (dolist (elem _args)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _start_time
       (write-long (length _start_time) s) (princ _start_time s)
     ;; string _action_duration
       (write-long (length _action_duration) s) (princ _action_duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _args i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _start_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_duration
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_duration (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pddl_msgs::PDDLStep :md5sum-) "d79a0663dfa206e7ac7a0755c6d1e154")
(setf (get pddl_msgs::PDDLStep :datatype-) "pddl_msgs/PDDLStep")
(setf (get pddl_msgs::PDDLStep :definition-)
      "string action
string[] args
string start_time
# we can't use duration name
string action_duration
")



(provide :pddl_msgs/PDDLStep "d79a0663dfa206e7ac7a0755c6d1e154")


