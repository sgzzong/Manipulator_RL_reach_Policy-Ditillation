;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::Trigger)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'Trigger (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::TRIGGER")
  (make-package "NIRYO_ROBOT_MSGS::TRIGGER"))
(unless (find-package "NIRYO_ROBOT_MSGS::TRIGGERREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::TRIGGERREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::TRIGGERRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::TRIGGERRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::TriggerRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::TriggerRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_robot_msgs::TriggerResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_msgs::TriggerResponse
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

(defclass niryo_robot_msgs::Trigger
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::Trigger :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_robot_msgs::Trigger :datatype-) "niryo_robot_msgs/Trigger")
(setf (get niryo_robot_msgs::Trigger :request) niryo_robot_msgs::TriggerRequest)
(setf (get niryo_robot_msgs::Trigger :response) niryo_robot_msgs::TriggerResponse)

(defmethod niryo_robot_msgs::TriggerRequest
  (:response () (instance niryo_robot_msgs::TriggerResponse :init)))

(setf (get niryo_robot_msgs::TriggerRequest :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_robot_msgs::TriggerRequest :datatype-) "niryo_robot_msgs/TriggerRequest")
(setf (get niryo_robot_msgs::TriggerRequest :definition-)
      "---
int32 status
string message

")

(setf (get niryo_robot_msgs::TriggerResponse :md5sum-) "2c1d00fb8b4e78420f43d93d5292a429")
(setf (get niryo_robot_msgs::TriggerResponse :datatype-) "niryo_robot_msgs/TriggerResponse")
(setf (get niryo_robot_msgs::TriggerResponse :definition-)
      "---
int32 status
string message

")



(provide :niryo_robot_msgs/Trigger "2c1d00fb8b4e78420f43d93d5292a429")


