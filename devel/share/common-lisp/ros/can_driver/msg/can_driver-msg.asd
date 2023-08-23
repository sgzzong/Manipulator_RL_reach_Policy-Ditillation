
(cl:in-package :asdf)

(defsystem "can_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StepperArrayMotorHardwareStatus" :depends-on ("_package_StepperArrayMotorHardwareStatus"))
    (:file "_package_StepperArrayMotorHardwareStatus" :depends-on ("_package"))
    (:file "StepperMotorCommand" :depends-on ("_package_StepperMotorCommand"))
    (:file "_package_StepperMotorCommand" :depends-on ("_package"))
    (:file "StepperMotorHardwareStatus" :depends-on ("_package_StepperMotorHardwareStatus"))
    (:file "_package_StepperMotorHardwareStatus" :depends-on ("_package"))
  ))