
(cl:in-package :asdf)

(defsystem "niryo_robot_rpi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AnalogIO" :depends-on ("_package_AnalogIO"))
    (:file "_package_AnalogIO" :depends-on ("_package"))
    (:file "AnalogIOState" :depends-on ("_package_AnalogIOState"))
    (:file "_package_AnalogIOState" :depends-on ("_package"))
    (:file "DigitalIO" :depends-on ("_package_DigitalIO"))
    (:file "_package_DigitalIO" :depends-on ("_package"))
    (:file "DigitalIOState" :depends-on ("_package_DigitalIOState"))
    (:file "_package_DigitalIOState" :depends-on ("_package"))
    (:file "I2CComponent" :depends-on ("_package_I2CComponent"))
    (:file "_package_I2CComponent" :depends-on ("_package"))
    (:file "LogStatus" :depends-on ("_package_LogStatus"))
    (:file "_package_LogStatus" :depends-on ("_package"))
  ))