
(cl:in-package :asdf)

(defsystem "conveyor_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ControlConveyor" :depends-on ("_package_ControlConveyor"))
    (:file "_package_ControlConveyor" :depends-on ("_package"))
    (:file "SetConveyor" :depends-on ("_package_SetConveyor"))
    (:file "_package_SetConveyor" :depends-on ("_package"))
  ))