
(cl:in-package :asdf)

(defsystem "conveyor_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConveyorFeedback" :depends-on ("_package_ConveyorFeedback"))
    (:file "_package_ConveyorFeedback" :depends-on ("_package"))
    (:file "ConveyorFeedbackArray" :depends-on ("_package_ConveyorFeedbackArray"))
    (:file "_package_ConveyorFeedbackArray" :depends-on ("_package"))
  ))