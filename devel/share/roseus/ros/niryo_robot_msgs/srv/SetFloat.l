;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::SetFloat)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'SetFloat (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::SETFLOAT")
  (make-package "NIRYO_ROBOT_MSGS::SETFLOAT"))
(unless (find-package "NIRYO_ROBOT_MSGS::SETFLOATREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::SETFLOATREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::SETFLOATRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::SETFLOATRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::SetFloatRequest
  :super ros::object
  :slots (_value ))

(defmethod niryo_robot_msgs::SetFloatRequest
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_msgs::SetFloatResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_msgs::SetFloatResponse
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

(defclass niryo_robot_msgs::SetFloat
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::SetFloat :md5sum-) "a933f245bb4b788cbe1bce040df73dc0")
(setf (get niryo_robot_msgs::SetFloat :datatype-) "niryo_robot_msgs/SetFloat")
(setf (get niryo_robot_msgs::SetFloat :request) niryo_robot_msgs::SetFloatRequest)
(setf (get niryo_robot_msgs::SetFloat :response) niryo_robot_msgs::SetFloatResponse)

(defmethod niryo_robot_msgs::SetFloatRequest
  (:response () (instance niryo_robot_msgs::SetFloatResponse :init)))

(setf (get niryo_robot_msgs::SetFloatRequest :md5sum-) "a933f245bb4b788cbe1bce040df73dc0")
(setf (get niryo_robot_msgs::SetFloatRequest :datatype-) "niryo_robot_msgs/SetFloatRequest")
(setf (get niryo_robot_msgs::SetFloatRequest :definition-)
      "float32 value
---
int32 status
string message

")

(setf (get niryo_robot_msgs::SetFloatResponse :md5sum-) "a933f245bb4b788cbe1bce040df73dc0")
(setf (get niryo_robot_msgs::SetFloatResponse :datatype-) "niryo_robot_msgs/SetFloatResponse")
(setf (get niryo_robot_msgs::SetFloatResponse :definition-)
      "float32 value
---
int32 status
string message

")



(provide :niryo_robot_msgs/SetFloat "a933f245bb4b788cbe1bce040df73dc0")


