;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_rpi::GetDigitalIO)
  (if (not (find-package "NIRYO_ROBOT_RPI"))
    (make-package "NIRYO_ROBOT_RPI"))
  (shadow 'GetDigitalIO (find-package "NIRYO_ROBOT_RPI")))
(unless (find-package "NIRYO_ROBOT_RPI::GETDIGITALIO")
  (make-package "NIRYO_ROBOT_RPI::GETDIGITALIO"))
(unless (find-package "NIRYO_ROBOT_RPI::GETDIGITALIOREQUEST")
  (make-package "NIRYO_ROBOT_RPI::GETDIGITALIOREQUEST"))
(unless (find-package "NIRYO_ROBOT_RPI::GETDIGITALIORESPONSE")
  (make-package "NIRYO_ROBOT_RPI::GETDIGITALIORESPONSE"))

(in-package "ROS")





(defclass niryo_robot_rpi::GetDigitalIORequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_rpi::GetDigitalIORequest
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

(defclass niryo_robot_rpi::GetDigitalIOResponse
  :super ros::object
  :slots (_status _message _value ))

(defmethod niryo_robot_rpi::GetDigitalIOResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _value __value)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_rpi::GetDigitalIO
  :super ros::object
  :slots ())

(setf (get niryo_robot_rpi::GetDigitalIO :md5sum-) "ed94c4d2f8ee880bde6769a73e97a41e")
(setf (get niryo_robot_rpi::GetDigitalIO :datatype-) "niryo_robot_rpi/GetDigitalIO")
(setf (get niryo_robot_rpi::GetDigitalIO :request) niryo_robot_rpi::GetDigitalIORequest)
(setf (get niryo_robot_rpi::GetDigitalIO :response) niryo_robot_rpi::GetDigitalIOResponse)

(defmethod niryo_robot_rpi::GetDigitalIORequest
  (:response () (instance niryo_robot_rpi::GetDigitalIOResponse :init)))

(setf (get niryo_robot_rpi::GetDigitalIORequest :md5sum-) "ed94c4d2f8ee880bde6769a73e97a41e")
(setf (get niryo_robot_rpi::GetDigitalIORequest :datatype-) "niryo_robot_rpi/GetDigitalIORequest")
(setf (get niryo_robot_rpi::GetDigitalIORequest :definition-)
      "string name
---
int32 status
string message

bool value

")

(setf (get niryo_robot_rpi::GetDigitalIOResponse :md5sum-) "ed94c4d2f8ee880bde6769a73e97a41e")
(setf (get niryo_robot_rpi::GetDigitalIOResponse :datatype-) "niryo_robot_rpi/GetDigitalIOResponse")
(setf (get niryo_robot_rpi::GetDigitalIOResponse :definition-)
      "string name
---
int32 status
string message

bool value

")



(provide :niryo_robot_rpi/GetDigitalIO "ed94c4d2f8ee880bde6769a73e97a41e")


