
(cl:in-package :asdf)

(defsystem "niryo_robot_arm_commander-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :niryo_robot_arm_commander-msg
               :niryo_robot_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "ComputeTrajectory" :depends-on ("_package_ComputeTrajectory"))
    (:file "_package_ComputeTrajectory" :depends-on ("_package"))
    (:file "GetFK" :depends-on ("_package_GetFK"))
    (:file "_package_GetFK" :depends-on ("_package"))
    (:file "GetIK" :depends-on ("_package_GetIK"))
    (:file "_package_GetIK" :depends-on ("_package"))
    (:file "GetJointLimits" :depends-on ("_package_GetJointLimits"))
    (:file "_package_GetJointLimits" :depends-on ("_package"))
    (:file "GetTrajectory" :depends-on ("_package_GetTrajectory"))
    (:file "_package_GetTrajectory" :depends-on ("_package"))
    (:file "JogShift" :depends-on ("_package_JogShift"))
    (:file "_package_JogShift" :depends-on ("_package"))
    (:file "ManageTrajectory" :depends-on ("_package_ManageTrajectory"))
    (:file "_package_ManageTrajectory" :depends-on ("_package"))
  ))