
(cl:in-package :asdf)

(defsystem "niryo_robot_system_api_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ManageEthernet" :depends-on ("_package_ManageEthernet"))
    (:file "_package_ManageEthernet" :depends-on ("_package"))
    (:file "ManageWifi" :depends-on ("_package_ManageWifi"))
    (:file "_package_ManageWifi" :depends-on ("_package"))
  ))