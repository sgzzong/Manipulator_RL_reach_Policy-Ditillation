
(cl:in-package :asdf)

(defsystem "niryo_robot_led_ring-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LedRingAnimation" :depends-on ("_package_LedRingAnimation"))
    (:file "_package_LedRingAnimation" :depends-on ("_package"))
    (:file "LedRingCurrentState" :depends-on ("_package_LedRingCurrentState"))
    (:file "_package_LedRingCurrentState" :depends-on ("_package"))
    (:file "LedRingStatus" :depends-on ("_package_LedRingStatus"))
    (:file "_package_LedRingStatus" :depends-on ("_package"))
  ))