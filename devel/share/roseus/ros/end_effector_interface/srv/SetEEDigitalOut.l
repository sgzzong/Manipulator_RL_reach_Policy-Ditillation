;; Auto-generated. Do not edit!


(when (boundp 'end_effector_interface::SetEEDigitalOut)
  (if (not (find-package "END_EFFECTOR_INTERFACE"))
    (make-package "END_EFFECTOR_INTERFACE"))
  (shadow 'SetEEDigitalOut (find-package "END_EFFECTOR_INTERFACE")))
(unless (find-package "END_EFFECTOR_INTERFACE::SETEEDIGITALOUT")
  (make-package "END_EFFECTOR_INTERFACE::SETEEDIGITALOUT"))
(unless (find-package "END_EFFECTOR_INTERFACE::SETEEDIGITALOUTREQUEST")
  (make-package "END_EFFECTOR_INTERFACE::SETEEDIGITALOUTREQUEST"))
(unless (find-package "END_EFFECTOR_INTERFACE::SETEEDIGITALOUTRESPONSE")
  (make-package "END_EFFECTOR_INTERFACE::SETEEDIGITALOUTRESPONSE"))

(in-package "ROS")





(defclass end_effector_interface::SetEEDigitalOutRequest
  :super ros::object
  :slots (_data ))

(defmethod end_effector_interface::SetEEDigitalOutRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass end_effector_interface::SetEEDigitalOutResponse
  :super ros::object
  :slots (_state ))

(defmethod end_effector_interface::SetEEDigitalOutResponse
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass end_effector_interface::SetEEDigitalOut
  :super ros::object
  :slots ())

(setf (get end_effector_interface::SetEEDigitalOut :md5sum-) "33ab7459542983349e0a81fbf65f814c")
(setf (get end_effector_interface::SetEEDigitalOut :datatype-) "end_effector_interface/SetEEDigitalOut")
(setf (get end_effector_interface::SetEEDigitalOut :request) end_effector_interface::SetEEDigitalOutRequest)
(setf (get end_effector_interface::SetEEDigitalOut :response) end_effector_interface::SetEEDigitalOutResponse)

(defmethod end_effector_interface::SetEEDigitalOutRequest
  (:response () (instance end_effector_interface::SetEEDigitalOutResponse :init)))

(setf (get end_effector_interface::SetEEDigitalOutRequest :md5sum-) "33ab7459542983349e0a81fbf65f814c")
(setf (get end_effector_interface::SetEEDigitalOutRequest :datatype-) "end_effector_interface/SetEEDigitalOutRequest")
(setf (get end_effector_interface::SetEEDigitalOutRequest :definition-)
      "bool data
---
bool state

")

(setf (get end_effector_interface::SetEEDigitalOutResponse :md5sum-) "33ab7459542983349e0a81fbf65f814c")
(setf (get end_effector_interface::SetEEDigitalOutResponse :datatype-) "end_effector_interface/SetEEDigitalOutResponse")
(setf (get end_effector_interface::SetEEDigitalOutResponse :definition-)
      "bool data
---
bool state

")



(provide :end_effector_interface/SetEEDigitalOut "33ab7459542983349e0a81fbf65f814c")


