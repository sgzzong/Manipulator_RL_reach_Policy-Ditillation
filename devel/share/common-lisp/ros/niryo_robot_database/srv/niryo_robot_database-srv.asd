
(cl:in-package :asdf)

(defsystem "niryo_robot_database-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_database-msg
)
  :components ((:file "_package")
    (:file "AddFilePath" :depends-on ("_package_AddFilePath"))
    (:file "_package_AddFilePath" :depends-on ("_package"))
    (:file "GetAllByType" :depends-on ("_package_GetAllByType"))
    (:file "_package_GetAllByType" :depends-on ("_package"))
    (:file "GetSettings" :depends-on ("_package_GetSettings"))
    (:file "_package_GetSettings" :depends-on ("_package"))
    (:file "RmFilePath" :depends-on ("_package_RmFilePath"))
    (:file "_package_RmFilePath" :depends-on ("_package"))
    (:file "SetSettings" :depends-on ("_package_SetSettings"))
    (:file "_package_SetSettings" :depends-on ("_package"))
  ))