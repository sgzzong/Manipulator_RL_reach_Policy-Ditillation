
(cl:in-package :asdf)

(defsystem "niryo_robot_reports-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Service" :depends-on ("_package_Service"))
    (:file "_package_Service" :depends-on ("_package"))
  ))