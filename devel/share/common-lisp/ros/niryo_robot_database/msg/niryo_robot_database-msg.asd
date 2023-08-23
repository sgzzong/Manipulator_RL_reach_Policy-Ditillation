
(cl:in-package :asdf)

(defsystem "niryo_robot_database-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FilePath" :depends-on ("_package_FilePath"))
    (:file "_package_FilePath" :depends-on ("_package"))
    (:file "Setting" :depends-on ("_package_Setting"))
    (:file "_package_Setting" :depends-on ("_package"))
  ))