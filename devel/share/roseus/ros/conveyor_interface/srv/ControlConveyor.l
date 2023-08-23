;; Auto-generated. Do not edit!


(when (boundp 'conveyor_interface::ControlConveyor)
  (if (not (find-package "CONVEYOR_INTERFACE"))
    (make-package "CONVEYOR_INTERFACE"))
  (shadow 'ControlConveyor (find-package "CONVEYOR_INTERFACE")))
(unless (find-package "CONVEYOR_INTERFACE::CONTROLCONVEYOR")
  (make-package "CONVEYOR_INTERFACE::CONTROLCONVEYOR"))
(unless (find-package "CONVEYOR_INTERFACE::CONTROLCONVEYORREQUEST")
  (make-package "CONVEYOR_INTERFACE::CONTROLCONVEYORREQUEST"))
(unless (find-package "CONVEYOR_INTERFACE::CONTROLCONVEYORRESPONSE")
  (make-package "CONVEYOR_INTERFACE::CONTROLCONVEYORRESPONSE"))

(in-package "ROS")





(defclass conveyor_interface::ControlConveyorRequest
  :super ros::object
  :slots (_id _control_on _speed _direction ))

(defmethod conveyor_interface::ControlConveyorRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:control_on __control_on) nil)
    ((:speed __speed) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _control_on __control_on)
   (setq _speed (round __speed))
   (setq _direction (round __direction))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:control_on
   (&optional (__control_on :null))
   (if (not (eq __control_on :null)) (setq _control_on __control_on)) _control_on)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; bool _control_on
    1
    ;; int16 _speed
    2
    ;; int8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; bool _control_on
       (if _control_on (write-byte -1 s) (write-byte 0 s))
     ;; int16 _speed
       (write-word _speed s)
     ;; int8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _control_on
     (setq _control_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;;
   self)
  )

(defclass conveyor_interface::ControlConveyorResponse
  :super ros::object
  :slots (_status _message ))

(defmethod conveyor_interface::ControlConveyorResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _status
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _status
       (write-word _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass conveyor_interface::ControlConveyor
  :super ros::object
  :slots ())

(setf (get conveyor_interface::ControlConveyor :md5sum-) "1a12d96c98fd71f849fe51970dc7ea3b")
(setf (get conveyor_interface::ControlConveyor :datatype-) "conveyor_interface/ControlConveyor")
(setf (get conveyor_interface::ControlConveyor :request) conveyor_interface::ControlConveyorRequest)
(setf (get conveyor_interface::ControlConveyor :response) conveyor_interface::ControlConveyorResponse)

(defmethod conveyor_interface::ControlConveyorRequest
  (:response () (instance conveyor_interface::ControlConveyorResponse :init)))

(setf (get conveyor_interface::ControlConveyorRequest :md5sum-) "1a12d96c98fd71f849fe51970dc7ea3b")
(setf (get conveyor_interface::ControlConveyorRequest :datatype-) "conveyor_interface/ControlConveyorRequest")
(setf (get conveyor_interface::ControlConveyorRequest :definition-)
      "uint8 id

bool control_on
int16 speed
int8 direction 
---
int16 status
string message

")

(setf (get conveyor_interface::ControlConveyorResponse :md5sum-) "1a12d96c98fd71f849fe51970dc7ea3b")
(setf (get conveyor_interface::ControlConveyorResponse :datatype-) "conveyor_interface/ControlConveyorResponse")
(setf (get conveyor_interface::ControlConveyorResponse :definition-)
      "uint8 id

bool control_on
int16 speed
int8 direction 
---
int16 status
string message

")



(provide :conveyor_interface/ControlConveyor "1a12d96c98fd71f849fe51970dc7ea3b")


