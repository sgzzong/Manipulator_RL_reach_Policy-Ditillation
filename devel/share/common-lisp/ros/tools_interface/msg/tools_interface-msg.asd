
(cl:in-package :asdf)

(defsystem "tools_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Tool" :depends-on ("_package_Tool"))
    (:file "_package_Tool" :depends-on ("_package"))
  ))