
(cl:in-package :asdf)

(defsystem "end_effector_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EEButtonStatus" :depends-on ("_package_EEButtonStatus"))
    (:file "_package_EEButtonStatus" :depends-on ("_package"))
    (:file "EEIOState" :depends-on ("_package_EEIOState"))
    (:file "_package_EEIOState" :depends-on ("_package"))
  ))