;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::GetString)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'GetString (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::GETSTRING")
  (make-package "NIRYO_ROBOT_MSGS::GETSTRING"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETSTRINGREQUEST")
  (make-package "NIRYO_ROBOT_MSGS::GETSTRINGREQUEST"))
(unless (find-package "NIRYO_ROBOT_MSGS::GETSTRINGRESPONSE")
  (make-package "NIRYO_ROBOT_MSGS::GETSTRINGRESPONSE"))

(in-package "ROS")





(defclass niryo_robot_msgs::GetStringRequest
  :super ros::object
  :slots ())

(defmethod niryo_robot_msgs::GetStringRequest
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

(defclass niryo_robot_msgs::GetStringResponse
  :super ros::object
  :slots (_value ))

(defmethod niryo_robot_msgs::GetStringResponse
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_robot_msgs::GetString
  :super ros::object
  :slots ())

(setf (get niryo_robot_msgs::GetString :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get niryo_robot_msgs::GetString :datatype-) "niryo_robot_msgs/GetString")
(setf (get niryo_robot_msgs::GetString :request) niryo_robot_msgs::GetStringRequest)
(setf (get niryo_robot_msgs::GetString :response) niryo_robot_msgs::GetStringResponse)

(defmethod niryo_robot_msgs::GetStringRequest
  (:response () (instance niryo_robot_msgs::GetStringResponse :init)))

(setf (get niryo_robot_msgs::GetStringRequest :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get niryo_robot_msgs::GetStringRequest :datatype-) "niryo_robot_msgs/GetStringRequest")
(setf (get niryo_robot_msgs::GetStringRequest :definition-)
      "---
string value

")

(setf (get niryo_robot_msgs::GetStringResponse :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get niryo_robot_msgs::GetStringResponse :datatype-) "niryo_robot_msgs/GetStringResponse")
(setf (get niryo_robot_msgs::GetStringResponse :definition-)
      "---
string value

")



(provide :niryo_robot_msgs/GetString "64e58419496c7248b4ef25731f88b8c3")


