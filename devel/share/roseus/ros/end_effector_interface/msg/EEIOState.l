;; Auto-generated. Do not edit!


(when (boundp 'end_effector_interface::EEIOState)
  (if (not (find-package "END_EFFECTOR_INTERFACE"))
    (make-package "END_EFFECTOR_INTERFACE"))
  (shadow 'EEIOState (find-package "END_EFFECTOR_INTERFACE")))
(unless (find-package "END_EFFECTOR_INTERFACE::EEIOSTATE")
  (make-package "END_EFFECTOR_INTERFACE::EEIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude EEIOState.msg.html


(defclass end_effector_interface::EEIOState
  :super ros::object
  :slots (_digital_input _digital_output ))

(defmethod end_effector_interface::EEIOState
  (:init
   (&key
    ((:digital_input __digital_input) nil)
    ((:digital_output __digital_output) nil)
    )
   (send-super :init)
   (setq _digital_input __digital_input)
   (setq _digital_output __digital_output)
   self)
  (:digital_input
   (&optional (__digital_input :null))
   (if (not (eq __digital_input :null)) (setq _digital_input __digital_input)) _digital_input)
  (:digital_output
   (&optional (__digital_output :null))
   (if (not (eq __digital_output :null)) (setq _digital_output __digital_output)) _digital_output)
  (:serialization-length
   ()
   (+
    ;; bool _digital_input
    1
    ;; bool _digital_output
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _digital_input
       (if _digital_input (write-byte -1 s) (write-byte 0 s))
     ;; bool _digital_output
       (if _digital_output (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _digital_input
     (setq _digital_input (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _digital_output
     (setq _digital_output (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get end_effector_interface::EEIOState :md5sum-) "809bceb7a033605762abfa0c8d28d0ad")
(setf (get end_effector_interface::EEIOState :datatype-) "end_effector_interface/EEIOState")
(setf (get end_effector_interface::EEIOState :definition-)
      "bool digital_input
bool digital_output

")



(provide :end_effector_interface/EEIOState "809bceb7a033605762abfa0c8d28d0ad")


