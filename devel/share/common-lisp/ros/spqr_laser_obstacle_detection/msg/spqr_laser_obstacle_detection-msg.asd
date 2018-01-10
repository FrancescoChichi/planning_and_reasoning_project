
(cl:in-package :asdf)

(defsystem "spqr_laser_obstacle_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "flag" :depends-on ("_package_flag"))
    (:file "_package_flag" :depends-on ("_package"))
  ))