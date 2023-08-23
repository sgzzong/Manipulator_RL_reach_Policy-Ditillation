
(cl:in-package :asdf)

(defsystem "end_effector_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetEEDigitalOut" :depends-on ("_package_SetEEDigitalOut"))
    (:file "_package_SetEEDigitalOut" :depends-on ("_package"))
  ))