
(cl:in-package :asdf)

(defsystem "niryo_robot_reports-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_reports-msg
)
  :components ((:file "_package")
    (:file "CheckConnection" :depends-on ("_package_CheckConnection"))
    (:file "_package_CheckConnection" :depends-on ("_package"))
    (:file "RunAutoDiagnosis" :depends-on ("_package_RunAutoDiagnosis"))
    (:file "_package_RunAutoDiagnosis" :depends-on ("_package"))
  ))