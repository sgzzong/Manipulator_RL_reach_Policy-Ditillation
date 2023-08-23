;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetInt)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetInt (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETINT")
  (make-package "NIRYO_ROBOT_MSGS::GETINT"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETINTREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETINTREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETINTRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETINTRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetIntRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetIntRequest
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

(defclass niryo_robot_msgs::GetIntResponse
  :super ros::object
  :slots (_value ))

(defmethod niryo_robot_msgs::GetIntResponse
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
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetInt
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetInt :md5sum-) "b3087778e93fcd34cc8d65bc54e850d1")
(setf (get niryo_robot_msgs::GetInt :datatype-) "niryo_robot_msgs/GetInt")
(setf (get niryo_robot_msgs::GetInt :request) niryo_robot_msgs::GetIntRequest)
(setf (get niryo_robot_msgs::GetInt :response) niryo_robot_msgs::GetIntResponse)

(defmethod niryo_robot_msgs::GetIntRequest
  (:response () (instance niryo_robot_msgs::GetIntResponse :init)))

(setf (get niryo_robot_msgs::GetIntRequest :md5sum-) "b3087778e93fcd34cc8d65bc54e850d1")
(setf (get niryo_robot_msgs::GetIntRequest :datatype-) "niryo_robot_msgs/GetIntRequest")
(setf (get niryo_robot_msgs::GetIntRequest :definition-)
      "---
int32 value

")

(setf (get niryo_robot_msgs::GetIntResponse :md5sum-) "b3087778e93fcd34cc8d65bc54e850d1")
(setf (get niryo_robot_msgs::GetIntResponse :datatype-) "niryo_robot_msgs/GetIntResponse")
(setf (get niryo_robot_msgs::GetIntResponse :definition-)
      "---
int32 value

")



(provide :niryo_robot_msgs/GetInt "b3087778e93fcd34cc8d65bc54e850d1")


