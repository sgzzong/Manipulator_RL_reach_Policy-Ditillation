
(cl:in-package :asdf)

(defsystem "niryo_robot_tools_commander-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :niryo_robot_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TCP" :depends-on ("_package_TCP"))
    (:file "_package_TCP" :depends-on ("_package"))
    (:file "ToolAction" :depends-on ("_package_ToolAction"))
    (:file "_package_ToolAction" :depends-on ("_package"))
    (:file "ToolActionFeedback" :depends-on ("_package_ToolActionFeedback"))
    (:file "_package_ToolActionFeedback" :depends-on ("_package"))
    (:file "ToolActionGoal" :depends-on ("_package_ToolActionGoal"))
    (:file "_package_ToolActionGoal" :depends-on ("_package"))
    (:file "ToolActionResult" :depends-on ("_package_ToolActionResult"))
    (:file "_package_ToolActionResult" :depends-on ("_package"))
    (:file "ToolCommand" :depends-on ("_package_ToolCommand"))
    (:file "_package_ToolCommand" :depends-on ("_package"))
    (:file "ToolFeedback" :depends-on ("_package_ToolFeedback"))
    (:file "_package_ToolFeedback" :depends-on ("_package"))
    (:file "ToolGoal" :depends-on ("_package_ToolGoal"))
    (:file "_package_ToolGoal" :depends-on ("_package"))
    (:file "ToolResult" :depends-on ("_package_ToolResult"))
    (:file "_package_ToolResult" :depends-on ("_package"))
  ))