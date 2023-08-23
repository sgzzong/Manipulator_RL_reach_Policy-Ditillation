
(cl:in-package :asdf)

(defsystem "can_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StepperCmd" :depends-on ("_package_StepperCmd"))
    (:file "_package_StepperCmd" :depends-on ("_package"))
  ))