
(cl:in-package :asdf)

(defsystem "niryo_robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BusState" :depends-on ("_package_BusState"))
    (:file "_package_BusState" :depends-on ("_package"))
    (:file "CommandStatus" :depends-on ("_package_CommandStatus"))
    (:file "_package_CommandStatus" :depends-on ("_package"))
    (:file "HardwareStatus" :depends-on ("_package_HardwareStatus"))
    (:file "_package_HardwareStatus" :depends-on ("_package"))
    (:file "MotorHeader" :depends-on ("_package_MotorHeader"))
    (:file "_package_MotorHeader" :depends-on ("_package"))
    (:file "ObjectPose" :depends-on ("_package_ObjectPose"))
    (:file "_package_ObjectPose" :depends-on ("_package"))
    (:file "RPY" :depends-on ("_package_RPY"))
    (:file "_package_RPY" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
    (:file "SoftwareVersion" :depends-on ("_package_SoftwareVersion"))
    (:file "_package_SoftwareVersion" :depends-on ("_package"))
  ))