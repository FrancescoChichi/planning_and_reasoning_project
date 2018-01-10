;; Auto-generated. Do not edit!


(when (boundp 'pddl_msgs::PDDLProblem)
  (if (not (find-package "PDDL_MSGS"))
    (make-package "PDDL_MSGS"))
  (shadow 'PDDLProblem (find-package "PDDL_MSGS")))
(unless (find-package "PDDL_MSGS::PDDLPROBLEM")
  (make-package "PDDL_MSGS::PDDLPROBLEM"))

(in-package "ROS")
;;//! \htmlinclude PDDLProblem.msg.html


(defclass pddl_msgs::PDDLProblem
  :super ros::object
  :slots (_name _domain _objects _initial _goal _metric ))

(defmethod pddl_msgs::PDDLProblem
  (:init
   (&key
    ((:name __name) "")
    ((:domain __domain) "")
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance pddl_msgs::PDDLObject :init) r)) r))
    ((:initial __initial) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:goal __goal) "")
    ((:metric __metric) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _domain (string __domain))
   (setq _objects __objects)
   (setq _initial __initial)
   (setq _goal (string __goal))
   (setq _metric (string __metric))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:domain
   (&optional __domain)
   (if __domain (setq _domain __domain)) _domain)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:initial
   (&optional __initial)
   (if __initial (setq _initial __initial)) _initial)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:metric
   (&optional __metric)
   (if __metric (setq _metric __metric)) _metric)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _domain
    4 (length _domain)
    ;; pddl_msgs/PDDLObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; string[] _initial
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _initial)) 4
    ;; string _goal
    4 (length _goal)
    ;; string _metric
    4 (length _metric)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _domain
       (write-long (length _domain) s) (princ _domain s)
     ;; pddl_msgs/PDDLObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; string[] _initial
     (write-long (length _initial) s)
     (dolist (elem _initial)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _goal
       (write-long (length _goal) s) (princ _goal s)
     ;; string _metric
       (write-long (length _metric) s) (princ _metric s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _domain
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _domain (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pddl_msgs/PDDLObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance pddl_msgs::PDDLObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _initial
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _initial (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _initial i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _goal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _metric
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _metric (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pddl_msgs::PDDLProblem :md5sum-) "dfd9bdd094d91245128f960694763882")
(setf (get pddl_msgs::PDDLProblem :datatype-) "pddl_msgs/PDDLProblem")
(setf (get pddl_msgs::PDDLProblem :definition-)
      "string name          # name of problem
string domain        # name of domain to use
pddl_msgs/PDDLObject[] objects # how to represent type?
string[] initial     # initial condition
string goal          # goal conjunction
string metric        # metric


================================================================================
MSG: pddl_msgs/PDDLObject
# definition of PDDLObject
string name
string type

")



(provide :pddl_msgs/PDDLProblem "dfd9bdd094d91245128f960694763882")


