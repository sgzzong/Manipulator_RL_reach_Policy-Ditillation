;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetBool)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetBool (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETBOOL")
  (make-package "NIRYO_ROBOT_MSGS::GETBOOL"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETBOOLREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETBOOLREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETBOOLRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETBOOLRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetBoolRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetBoolRequest
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

(defclass niryo_robot_msgs::GetBoolResponse
  :super ros::object
  :slots (_value ))

(defmethod niryo_robot_msgs::GetBoolResponse
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetBool
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetBool :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get niryo_robot_msgs::GetBool :datatype-) "niryo_robot_msgs/GetBool")
(setf (get niryo_robot_msgs::GetBool :request) niryo_robot_msgs::GetBoolRequest)
(setf (get niryo_robot_msgs::GetBool :response) niryo_robot_msgs::GetBoolResponse)

(defmethod niryo_robot_msgs::GetBoolRequest
  (:response () (instance niryo_robot_msgs::GetBoolResponse :init)))

(setf (get niryo_robot_msgs::GetBoolRequest :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get niryo_robot_msgs::GetBoolRequest :datatype-) "niryo_robot_msgs/GetBoolRequest")
(setf (get niryo_robot_msgs::GetBoolRequest :definition-)
      "---
bool value

")

(setf (get niryo_robot_msgs::GetBoolResponse :md5sum-) "e431d687bf4b2c65fbd94b12ae0cb5d9")
(setf (get niryo_robot_msgs::GetBoolResponse :datatype-) "niryo_robot_msgs/GetBoolResponse")
(setf (get niryo_robot_msgs::GetBoolResponse :definition-)
      "---
bool value

")



(provide :niryo_robot_msgs/GetBool "e431d687bf4b2c65fbd94b12ae0cb5d9")


