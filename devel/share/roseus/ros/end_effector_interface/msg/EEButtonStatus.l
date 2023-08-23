;; Auto-generated. Do not edit!


(when (boundp 'end_effector_interface::EEButtonStatus)
  (if (not (find-package "END_EFFECTOR_INTERFACE"))
    (make-package "END_EFFECTOR_INTERFACE"))
  (shadow 'EEButtonStatus (find-package "END_EFFECTOR_INTERFACE")))
(unless (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS")
  (make-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude EEButtonStatus.msg.html


(intern "*HANDLE_HELD_ACTION*" (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(shadow '*HANDLE_HELD_ACTION* (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(defconstant end_effector_interface::EEButtonStatus::*HANDLE_HELD_ACTION* 0)
(intern "*LONG_PUSH_ACTION*" (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(shadow '*LONG_PUSH_ACTION* (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(defconstant end_effector_interface::EEButtonStatus::*LONG_PUSH_ACTION* 1)
(intern "*SINGLE_PUSH_ACTION*" (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(shadow '*SINGLE_PUSH_ACTION* (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(defconstant end_effector_interface::EEButtonStatus::*SINGLE_PUSH_ACTION* 2)
(intern "*DOUBLE_PUSH_ACTION*" (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(shadow '*DOUBLE_PUSH_ACTION* (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(defconstant end_effector_interface::EEButtonStatus::*DOUBLE_PUSH_ACTION* 3)
(intern "*NO_ACTION*" (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(shadow '*NO_ACTION* (find-package "END_EFFECTOR_INTERFACE::EEBUTTONSTATUS"))
(defconstant end_effector_interface::EEButtonStatus::*NO_ACTION* 100)

(defun end_effector_interface::EEButtonStatus-to-symbol (const)
  (cond
        ((= const 0) 'end_effector_interface::EEButtonStatus::*HANDLE_HELD_ACTION*)
        ((= const 1) 'end_effector_interface::EEButtonStatus::*LONG_PUSH_ACTION*)
        ((= const 2) 'end_effector_interface::EEButtonStatus::*SINGLE_PUSH_ACTION*)
        ((= const 3) 'end_effector_interface::EEButtonStatus::*DOUBLE_PUSH_ACTION*)
        ((= const 100) 'end_effector_interface::EEButtonStatus::*NO_ACTION*)
        (t nil)))

(defclass end_effector_interface::EEButtonStatus
  :super ros::object
  :slots (_action ))

(defmethod end_effector_interface::EEButtonStatus
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get end_effector_interface::EEButtonStatus :md5sum-) "253c0270ed9bd9ba0d603239e8a42447")
(setf (get end_effector_interface::EEButtonStatus :datatype-) "end_effector_interface/EEButtonStatus")
(setf (get end_effector_interface::EEButtonStatus :definition-)
      "uint8 HANDLE_HELD_ACTION=0
uint8 LONG_PUSH_ACTION=1
uint8 SINGLE_PUSH_ACTION=2
uint8 DOUBLE_PUSH_ACTION=3
uint8 NO_ACTION=100

uint8 action

")



(provide :end_effector_interface/EEButtonStatus "253c0270ed9bd9ba0d603239e8a42447")


