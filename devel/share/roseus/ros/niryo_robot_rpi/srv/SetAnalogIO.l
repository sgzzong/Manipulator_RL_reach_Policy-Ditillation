;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::SetAnalogIO)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'SetAnalogIO (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::SETANALOGIO")
  (make-package "NIRYO_ROBOT_RPI::SETANALOGIO"))
(unless (find-package "NIRYO_ROBOT_RPI::SETANALOGIOREQUEST")
  (make-package "NIRYO_ROBOT_RPI::SETANALOGIOREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::SETANALOGIORESPONSE")
  (make-package "NIRYO_ROBOT_RPI::SETANALOGIORESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::SetAnalogIORequest
  :super ros::object
  :slots (_name _value ))

(defmethod niryo_robot_rpi::SetAnalogIORequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (float __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass niryo_robot_rpi::SetAnalogIOResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_rpi::SetAnalogIOResponse
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
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_rpi::SetAnalogIO
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::SetAnalogIO :md5sum-) "c3eb179d3143b44ef971b15a3fa11bb0")
(setf (get niryo_robot_rpi::SetAnalogIO :datatype-) "niryo_robot_rpi/SetAnalogIO")
(setf (get niryo_robot_rpi::SetAnalogIO :request) niryo_robot_rpi::SetAnalogIORequest)
(setf (get niryo_robot_rpi::SetAnalogIO :response) niryo_robot_rpi::SetAnalogIOResponse)

(defmethod niryo_robot_rpi::SetAnalogIORequest
  (:response () (instance niryo_robot_rpi::SetAnalogIOResponse :init)))

(setf (get niryo_robot_rpi::SetAnalogIORequest :md5sum-) "c3eb179d3143b44ef971b15a3fa11bb0")
(setf (get niryo_robot_rpi::SetAnalogIORequest :datatype-) "niryo_robot_rpi/SetAnalogIORequest")
(setf (get niryo_robot_rpi::SetAnalogIORequest :definition-)
      "string name
float64 value
---
int32 status
string message

")

(setf (get niryo_robot_rpi::SetAnalogIOResponse :md5sum-) "c3eb179d3143b44ef971b15a3fa11bb0")
(setf (get niryo_robot_rpi::SetAnalogIOResponse :datatype-) "niryo_robot_rpi/SetAnalogIOResponse")
(setf (get niryo_robot_rpi::SetAnalogIOResponse :definition-)
      "string name
float64 value
---
int32 status
string message

")



(provide :niryo_robot_rpi/SetAnalogIO "c3eb179d3143b44ef971b15a3fa11bb0")


