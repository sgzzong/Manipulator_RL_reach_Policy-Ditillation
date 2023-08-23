
(cl:in-package :asdf)

(defsystem "tools_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :tools_interface-msg
)
  :components ((:file "_package")
    (:file "PingDxlTool" :depends-on ("_package_PingDxlTool"))
    (:file "_package_PingDxlTool" :depends-on ("_package"))
    (:file "ToolCommand" :depends-on ("_package_ToolCommand"))
    (:file "_package_ToolCommand" :depends-on ("_package"))
  ))