
(cl:in-package :asdf)

(defsystem "niryo_robot_sound-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SoundList" :depends-on ("_package_SoundList"))
    (:file "_package_SoundList" :depends-on ("_package"))
    (:file "SoundObject" :depends-on ("_package_SoundObject"))
    (:file "_package_SoundObject" :depends-on ("_package"))
  ))