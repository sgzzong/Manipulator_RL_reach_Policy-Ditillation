
(cl:in-package :asdf)

(defsystem "niryo_robot_tools_commander-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :niryo_robot_msgs-msg
)
  :components ((:file "_package")
    (:file "SetTCP" :depends-on ("_package_SetTCP"))
    (:file "_package_SetTCP" :depends-on ("_package"))
  ))