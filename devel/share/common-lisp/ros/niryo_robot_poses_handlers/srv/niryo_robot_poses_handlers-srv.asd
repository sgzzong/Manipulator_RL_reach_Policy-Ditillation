
(cl:in-package :asdf)

(defsystem "niryo_robot_poses_handlers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :niryo_robot_msgs-msg
               :niryo_robot_poses_handlers-msg
)
  :components ((:file "_package")
    (:file "GetDynamicFrame" :depends-on ("_package_GetDynamicFrame"))
    (:file "_package_GetDynamicFrame" :depends-on ("_package"))
    (:file "GetPose" :depends-on ("_package_GetPose"))
    (:file "_package_GetPose" :depends-on ("_package"))
    (:file "GetTargetPose" :depends-on ("_package_GetTargetPose"))
    (:file "_package_GetTargetPose" :depends-on ("_package"))
    (:file "GetTransformPose" :depends-on ("_package_GetTransformPose"))
    (:file "_package_GetTransformPose" :depends-on ("_package"))
    (:file "GetWorkspaceMatrixPoses" :depends-on ("_package_GetWorkspaceMatrixPoses"))
    (:file "_package_GetWorkspaceMatrixPoses" :depends-on ("_package"))
    (:file "GetWorkspacePoints" :depends-on ("_package_GetWorkspacePoints"))
    (:file "_package_GetWorkspacePoints" :depends-on ("_package"))
    (:file "GetWorkspaceRatio" :depends-on ("_package_GetWorkspaceRatio"))
    (:file "_package_GetWorkspaceRatio" :depends-on ("_package"))
    (:file "GetWorkspaceRobotPoses" :depends-on ("_package_GetWorkspaceRobotPoses"))
    (:file "_package_GetWorkspaceRobotPoses" :depends-on ("_package"))
    (:file "ManageDynamicFrame" :depends-on ("_package_ManageDynamicFrame"))
    (:file "_package_ManageDynamicFrame" :depends-on ("_package"))
    (:file "ManagePose" :depends-on ("_package_ManagePose"))
    (:file "_package_ManagePose" :depends-on ("_package"))
    (:file "ManageWorkspace" :depends-on ("_package_ManageWorkspace"))
    (:file "_package_ManageWorkspace" :depends-on ("_package"))
  ))