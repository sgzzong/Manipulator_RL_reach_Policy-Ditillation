
(cl:in-package :asdf)

(defsystem "niryo_robot_sound-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ManageSound" :depends-on ("_package_ManageSound"))
    (:file "_package_ManageSound" :depends-on ("_package"))
    (:file "PlaySound" :depends-on ("_package_PlaySound"))
    (:file "_package_PlaySound" :depends-on ("_package"))
    (:file "TextToSpeech" :depends-on ("_package_TextToSpeech"))
    (:file "_package_TextToSpeech" :depends-on ("_package"))
  ))