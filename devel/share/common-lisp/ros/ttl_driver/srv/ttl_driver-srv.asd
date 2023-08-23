
(cl:in-package :asdf)

(defsystem "ttl_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ReadCustomValue" :depends-on ("_package_ReadCustomValue"))
    (:file "_package_ReadCustomValue" :depends-on ("_package"))
    (:file "ReadPIDValue" :depends-on ("_package_ReadPIDValue"))
    (:file "_package_ReadPIDValue" :depends-on ("_package"))
    (:file "ReadVelocityProfile" :depends-on ("_package_ReadVelocityProfile"))
    (:file "_package_ReadVelocityProfile" :depends-on ("_package"))
    (:file "WriteCustomValue" :depends-on ("_package_WriteCustomValue"))
    (:file "_package_WriteCustomValue" :depends-on ("_package"))
    (:file "WritePIDValue" :depends-on ("_package_WritePIDValue"))
    (:file "_package_WritePIDValue" :depends-on ("_package"))
    (:file "WriteVelocityProfile" :depends-on ("_package_WriteVelocityProfile"))
    (:file "_package_WriteVelocityProfile" :depends-on ("_package"))
  ))