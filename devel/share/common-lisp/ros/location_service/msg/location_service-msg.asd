
(cl:in-package :asdf)

(defsystem "location_service-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Location" :depends-on ("_package_Location"))
    (:file "_package_Location" :depends-on ("_package"))
  ))