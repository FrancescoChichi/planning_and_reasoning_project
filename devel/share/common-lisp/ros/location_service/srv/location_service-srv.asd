
(cl:in-package :asdf)

(defsystem "location_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :location_service-msg
)
  :components ((:file "_package")
    (:file "DeleteLocation" :depends-on ("_package_DeleteLocation"))
    (:file "_package_DeleteLocation" :depends-on ("_package"))
    (:file "GetLocation" :depends-on ("_package_GetLocation"))
    (:file "_package_GetLocation" :depends-on ("_package"))
    (:file "StoreLocation" :depends-on ("_package_StoreLocation"))
    (:file "_package_StoreLocation" :depends-on ("_package"))
  ))