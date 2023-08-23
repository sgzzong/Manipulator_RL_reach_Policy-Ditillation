
(cl:in-package :asdf)

(defsystem "ttl_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArrayMotorHardwareStatus" :depends-on ("_package_ArrayMotorHardwareStatus"))
    (:file "_package_ArrayMotorHardwareStatus" :depends-on ("_package"))
    (:file "MotorCommand" :depends-on ("_package_MotorCommand"))
    (:file "_package_MotorCommand" :depends-on ("_package"))
    (:file "MotorHardwareStatus" :depends-on ("_package_MotorHardwareStatus"))
    (:file "_package_MotorHardwareStatus" :depends-on ("_package"))
  ))