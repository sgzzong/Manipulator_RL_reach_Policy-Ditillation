
(cl:in-package :asdf)

(defsystem "niryo_robot_system_api_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WifiStatus" :depends-on ("_package_WifiStatus"))
    (:file "_package_WifiStatus" :depends-on ("_package"))
  ))