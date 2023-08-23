
(cl:in-package :asdf)

(defsystem "niryo_robot_programs_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_programs_manager-msg
)
  :components ((:file "_package")
    (:file "ExecuteProgram" :depends-on ("_package_ExecuteProgram"))
    (:file "_package_ExecuteProgram" :depends-on ("_package"))
    (:file "GetProgram" :depends-on ("_package_GetProgram"))
    (:file "_package_GetProgram" :depends-on ("_package"))
    (:file "GetProgramAutorunInfos" :depends-on ("_package_GetProgramAutorunInfos"))
    (:file "_package_GetProgramAutorunInfos" :depends-on ("_package"))
    (:file "GetProgramList" :depends-on ("_package_GetProgramList"))
    (:file "_package_GetProgramList" :depends-on ("_package"))
    (:file "ManageProgram" :depends-on ("_package_ManageProgram"))
    (:file "_package_ManageProgram" :depends-on ("_package"))
    (:file "SetProgramAutorun" :depends-on ("_package_SetProgramAutorun"))
    (:file "_package_SetProgramAutorun" :depends-on ("_package"))
  ))