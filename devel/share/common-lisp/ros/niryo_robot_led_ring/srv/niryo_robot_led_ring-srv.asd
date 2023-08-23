
(cl:in-package :asdf)

(defsystem "niryo_robot_led_ring-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :niryo_robot_led_ring-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LedUser" :depends-on ("_package_LedUser"))
    (:file "_package_LedUser" :depends-on ("_package"))
    (:file "SetLedColor" :depends-on ("_package_SetLedColor"))
    (:file "_package_SetLedColor" :depends-on ("_package"))
  ))