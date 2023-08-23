;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::GetAnalogIO)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'GetAnalogIO (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::GETANALOGIO")
  (make-package "NIRYO_ROBOT_RPI::GETANALOGIO"))
(unless (find-package "NIRYO_ROBOT_RPI::GETANALOGIOREQUEST")
  (make-package "NIRYO_ROBOT_RPI::GETANALOGIOREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::GETANALOGIORESPONSE")
  (make-package "NIRYO_ROBOT_RPI::GETANALOGIORESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::GetAnalogIORequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_rpi::GetAnalogIORequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_rpi::GetAnalogIOResponse
  :super ros::object
  :slots (_status _message _value ))

(defmethod niryo_robot_rpi::GetAnalogIOResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _value (float __value))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass niryo_robot_rpi::GetAnalogIO
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::GetAnalogIO :md5sum-) "c0341414c31da10ea5e97c46af545c84")
(setf (get niryo_robot_rpi::GetAnalogIO :datatype-) "niryo_robot_rpi/GetAnalogIO")
(setf (get niryo_robot_rpi::GetAnalogIO :request) niryo_robot_rpi::GetAnalogIORequest)
(setf (get niryo_robot_rpi::GetAnalogIO :response) niryo_robot_rpi::GetAnalogIOResponse)

(defmethod niryo_robot_rpi::GetAnalogIORequest
  (:response () (instance niryo_robot_rpi::GetAnalogIOResponse :init)))

(setf (get niryo_robot_rpi::GetAnalogIORequest :md5sum-) "c0341414c31da10ea5e97c46af545c84")
(setf (get niryo_robot_rpi::GetAnalogIORequest :datatype-) "niryo_robot_rpi/GetAnalogIORequest")
(setf (get niryo_robot_rpi::GetAnalogIORequest :definition-)
      "string name
---
int32 status
string message

float64 value
")

(setf (get niryo_robot_rpi::GetAnalogIOResponse :md5sum-) "c0341414c31da10ea5e97c46af545c84")
(setf (get niryo_robot_rpi::GetAnalogIOResponse :datatype-) "niryo_robot_rpi/GetAnalogIOResponse")
(setf (get niryo_robot_rpi::GetAnalogIOResponse :definition-)
      "string name
---
int32 status
string message

float64 value
")



(provide :niryo_robot_rpi/GetAnalogIO "c0341414c31da10ea5e97c46af545c84")


