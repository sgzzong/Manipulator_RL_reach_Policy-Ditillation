;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::AdvertiseShutdown)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'AdvertiseShutdown (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWN")
  (make-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWN"))
(unless (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNRESPONSE"))

(in-package "ROS")





(intern "*SHUTDOWN*" (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(shadow '*SHUTDOWN* (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(defconstant niryo_robot_msgs::AdvertiseShutdownRequest::*SHUTDOWN* 1)
(intern "*REBOOT*" (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(shadow '*REBOOT* (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(defconstant niryo_robot_msgs::AdvertiseShutdownRequest::*REBOOT* 2)
(intern "*UPDATE*" (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(shadow '*UPDATE* (find-package "NIRYO_ROBOT_MSGS::ADVERTISESHUTDOWNREQUEST"))
(defconstant niryo_robot_msgs::AdvertiseShutdownRequest::*UPDATE* 3)

(defun niryo_robot_msgs::AdvertiseShutdownRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_msgs::AdvertiseShutdownRequest::*SHUTDOWN*)
        ((= const 2) 'niryo_robot_msgs::AdvertiseShutdownRequest::*REBOOT*)
        ((= const 3) 'niryo_robot_msgs::AdvertiseShutdownRequest::*UPDATE*)
        (t nil)))

(defclass niryo_robot_msgs::AdvertiseShutdownRequest
  :super ros::object
  :slots (_value ))

(defmethod niryo_robot_msgs::AdvertiseShutdownRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _value 127) (setq _value (- _value 256)))
   ;;
   self)
  )

(defclass niryo_robot_msgs::AdvertiseShutdownResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_msgs::AdvertiseShutdownResponse
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

(defclass niryo_robot_msgs::AdvertiseShutdown
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::AdvertiseShutdown :md5sum-) "db3082007b6af7d47710cdb951c124e8")
(setf (get niryo_robot_msgs::AdvertiseShutdown :datatype-) "niryo_robot_msgs/AdvertiseShutdown")
(setf (get niryo_robot_msgs::AdvertiseShutdown :request) niryo_robot_msgs::AdvertiseShutdownRequest)
(setf (get niryo_robot_msgs::AdvertiseShutdown :response) niryo_robot_msgs::AdvertiseShutdownResponse)

(defmethod niryo_robot_msgs::AdvertiseShutdownRequest
  (:response () (instance niryo_robot_msgs::AdvertiseShutdownResponse :init)))

(setf (get niryo_robot_msgs::AdvertiseShutdownRequest :md5sum-) "db3082007b6af7d47710cdb951c124e8")
(setf (get niryo_robot_msgs::AdvertiseShutdownRequest :datatype-) "niryo_robot_msgs/AdvertiseShutdownRequest")
(setf (get niryo_robot_msgs::AdvertiseShutdownRequest :definition-)
      "int8 SHUTDOWN=1
int8 REBOOT=2
int8 UPDATE=3

int8 value
---
int32 status
string message

")

(setf (get niryo_robot_msgs::AdvertiseShutdownResponse :md5sum-) "db3082007b6af7d47710cdb951c124e8")
(setf (get niryo_robot_msgs::AdvertiseShutdownResponse :datatype-) "niryo_robot_msgs/AdvertiseShutdownResponse")
(setf (get niryo_robot_msgs::AdvertiseShutdownResponse :definition-)
      "int8 SHUTDOWN=1
int8 REBOOT=2
int8 UPDATE=3

int8 value
---
int32 status
string message

")



(provide :niryo_robot_msgs/AdvertiseShutdown "db3082007b6af7d47710cdb951c124e8")


