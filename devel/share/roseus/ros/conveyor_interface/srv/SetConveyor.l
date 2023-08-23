;; Auto-generated. Do not edit!


(when (boundp 'conveyor_interface::SetConveyor)
  (if (not (find-package "CONVEYOR_INTERFACE"))
    (make-package "CONVEYOR_INTERFACE"))
  (shadow 'SetConveyor (find-package "CONVEYOR_INTERFACE")))
(unless (find-package "CONVEYOR_INTERFACE::SETCONVEYOR")
  (make-package "CONVEYOR_INTERFACE::SETCONVEYOR"))
(unless (find-package "CONVEYOR_INTERFACE::SETCONVEYORREQUEST")
  (make-package "CONVEYOR_INTERFACE::SETCONVEYORREQUEST"))
(unless (find-package "CONVEYOR_INTERFACE::SETCONVEYORRESPONSE")
  (make-package "CONVEYOR_INTERFACE::SETCONVEYORRESPONSE"))

(in-package "ROS")





(intern "*ADD*" (find-package "CONVEYOR_INTERFACE::SETCONVEYORREQUEST"))
(shadow '*ADD* (find-package "CONVEYOR_INTERFACE::SETCONVEYORREQUEST"))
(defconstant conveyor_interface::SetConveyorRequest::*ADD* 1)
(intern "*REMOVE*" (find-package "CONVEYOR_INTERFACE::SETCONVEYORREQUEST"))
(shadow '*REMOVE* (find-package "CONVEYOR_INTERFACE::SETCONVEYORREQUEST"))
(defconstant conveyor_interface::SetConveyorRequest::*REMOVE* 2)

(defun conveyor_interface::SetConveyorRequest-to-symbol (const)
  (cond
        ((= const 1) 'conveyor_interface::SetConveyorRequest::*ADD*)
        ((= const 2) 'conveyor_interface::SetConveyorRequest::*REMOVE*)
        (t nil)))

(defclass conveyor_interface::SetConveyorRequest
  :super ros::object
  :slots (_cmd _id ))

(defmethod conveyor_interface::SetConveyorRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _id (round __id))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass conveyor_interface::SetConveyorResponse
  :super ros::object
  :slots (_id _status _message ))

(defmethod conveyor_interface::SetConveyorResponse
  (:init
   (&key
    ((:id __id) 0)
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass conveyor_interface::SetConveyor
  :super ros::object
  :slots ())

(setf (get conveyor_interface::SetConveyor :md5sum-) "e621bde089c256d87ade2e131605eeb7")
(setf (get conveyor_interface::SetConveyor :datatype-) "conveyor_interface/SetConveyor")
(setf (get conveyor_interface::SetConveyor :request) conveyor_interface::SetConveyorRequest)
(setf (get conveyor_interface::SetConveyor :response) conveyor_interface::SetConveyorResponse)

(defmethod conveyor_interface::SetConveyorRequest
  (:response () (instance conveyor_interface::SetConveyorResponse :init)))

(setf (get conveyor_interface::SetConveyorRequest :md5sum-) "e621bde089c256d87ade2e131605eeb7")
(setf (get conveyor_interface::SetConveyorRequest :datatype-) "conveyor_interface/SetConveyorRequest")
(setf (get conveyor_interface::SetConveyorRequest :definition-)
      "uint8 cmd
uint8 id

uint8 ADD = 1
uint8 REMOVE = 2

---
int16 id
int16 status
string message

")

(setf (get conveyor_interface::SetConveyorResponse :md5sum-) "e621bde089c256d87ade2e131605eeb7")
(setf (get conveyor_interface::SetConveyorResponse :datatype-) "conveyor_interface/SetConveyorResponse")
(setf (get conveyor_interface::SetConveyorResponse :definition-)
      "uint8 cmd
uint8 id

uint8 ADD = 1
uint8 REMOVE = 2

---
int16 id
int16 status
string message

")



(provide :conveyor_interface/SetConveyor "e621bde089c256d87ade2e131605eeb7")


