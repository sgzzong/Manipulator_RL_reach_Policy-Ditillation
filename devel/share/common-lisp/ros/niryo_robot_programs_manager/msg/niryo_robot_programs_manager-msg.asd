
(cl:in-package :asdf)

(defsystem "niryo_robot_programs_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ProgramIsRunning" :depends-on ("_package_ProgramIsRunning"))
    (:file "_package_ProgramIsRunning" :depends-on ("_package"))
    (:file "ProgramLanguage" :depends-on ("_package_ProgramLanguage"))
    (:file "_package_ProgramLanguage" :depends-on ("_package"))
    (:file "ProgramLanguageList" :depends-on ("_package_ProgramLanguageList"))
    (:file "_package_ProgramLanguageList" :depends-on ("_package"))
    (:file "ProgramList" :depends-on ("_package_ProgramList"))
    (:file "_package_ProgramList" :depends-on ("_package"))
  ))