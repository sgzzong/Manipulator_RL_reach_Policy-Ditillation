
(cl:in-package :asdf)

(defsystem "niryo_robot_arm_commander-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :niryo_robot_msgs-msg
               :std_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmMoveCommand" :depends-on ("_package_ArmMoveCommand"))
    (:file "_package_ArmMoveCommand" :depends-on ("_package"))
    (:file "CommandJog" :depends-on ("_package_CommandJog"))
    (:file "_package_CommandJog" :depends-on ("_package"))
    (:file "JointLimits" :depends-on ("_package_JointLimits"))
    (:file "_package_JointLimits" :depends-on ("_package"))
    (:file "JointTrajectory" :depends-on ("_package_JointTrajectory"))
    (:file "_package_JointTrajectory" :depends-on ("_package"))
    (:file "JointTrajectoryPoint" :depends-on ("_package_JointTrajectoryPoint"))
    (:file "_package_JointTrajectoryPoint" :depends-on ("_package"))
    (:file "PausePlanExecution" :depends-on ("_package_PausePlanExecution"))
    (:file "_package_PausePlanExecution" :depends-on ("_package"))
    (:file "RobotMoveAction" :depends-on ("_package_RobotMoveAction"))
    (:file "_package_RobotMoveAction" :depends-on ("_package"))
    (:file "RobotMoveActionFeedback" :depends-on ("_package_RobotMoveActionFeedback"))
    (:file "_package_RobotMoveActionFeedback" :depends-on ("_package"))
    (:file "RobotMoveActionGoal" :depends-on ("_package_RobotMoveActionGoal"))
    (:file "_package_RobotMoveActionGoal" :depends-on ("_package"))
    (:file "RobotMoveActionResult" :depends-on ("_package_RobotMoveActionResult"))
    (:file "_package_RobotMoveActionResult" :depends-on ("_package"))
    (:file "RobotMoveFeedback" :depends-on ("_package_RobotMoveFeedback"))
    (:file "_package_RobotMoveFeedback" :depends-on ("_package"))
    (:file "RobotMoveGoal" :depends-on ("_package_RobotMoveGoal"))
    (:file "_package_RobotMoveGoal" :depends-on ("_package"))
    (:file "RobotMoveResult" :depends-on ("_package_RobotMoveResult"))
    (:file "_package_RobotMoveResult" :depends-on ("_package"))
    (:file "ShiftPose" :depends-on ("_package_ShiftPose"))
    (:file "_package_ShiftPose" :depends-on ("_package"))
  ))