;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_tools_commander::SetTCP)
  (if (not (find-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
    (make-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
  (shadow 'SetTCP (find-package "NIRYO_ROBOT_TOOLS_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::SETTCP")
  (make-package "NIRYO_ROBOT_TOOLS_COMMANDER::SETTCP"))
(unless (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::SETTCPREQUEST")
  (make-package "NIRYO_ROBOT_TOOLS_COMMANDER::SETTCPREQUEST"))
(unless (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::SETTCPRESPONSE")
  (make-package "NIRYO_ROBOT_TOOLS_COMMANDER::SETTCPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))




(defclass niryo_robot_tools_commander::SetTCPRequest
  :super ros::object
  :slots (_position _rpy _orientation ))

(defmethod niryo_robot_tools_commander::SetTCPRequest
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _rpy __rpy)
   (setq _orientation __orientation)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_robot_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; niryo_robot_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_robot_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_tools_commander::SetTCPResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_tools_commander::SetTCPResponse
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

(defclass niryo_robot_tools_commander::SetTCP
  :super ros::object
  :slots ())

(setf (get niryo_robot_tools_commander::SetTCP :md5sum-) "7e7b3d8cc25cf3ee8617fe16c36dee57")
(setf (get niryo_robot_tools_commander::SetTCP :datatype-) "niryo_robot_tools_commander/SetTCP")
(setf (get niryo_robot_tools_commander::SetTCP :request) niryo_robot_tools_commander::SetTCPRequest)
(setf (get niryo_robot_tools_commander::SetTCP :response) niryo_robot_tools_commander::SetTCPResponse)

(defmethod niryo_robot_tools_commander::SetTCPRequest
  (:response () (instance niryo_robot_tools_commander::SetTCPResponse :init)))

(setf (get niryo_robot_tools_commander::SetTCPRequest :md5sum-) "7e7b3d8cc25cf3ee8617fe16c36dee57")
(setf (get niryo_robot_tools_commander::SetTCPRequest :datatype-) "niryo_robot_tools_commander/SetTCPRequest")
(setf (get niryo_robot_tools_commander::SetTCPRequest :definition-)
      "geometry_msgs/Point position

#Only one of the two is required.
#If both are filled, the quaternion will be chosen by default
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_robot_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 status
string message

")

(setf (get niryo_robot_tools_commander::SetTCPResponse :md5sum-) "7e7b3d8cc25cf3ee8617fe16c36dee57")
(setf (get niryo_robot_tools_commander::SetTCPResponse :datatype-) "niryo_robot_tools_commander/SetTCPResponse")
(setf (get niryo_robot_tools_commander::SetTCPResponse :definition-)
      "geometry_msgs/Point position

#Only one of the two is required.
#If both are filled, the quaternion will be chosen by default
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_robot_msgs/RPY
# roll, pitch and yaw

float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 status
string message

")



(provide :niryo_robot_tools_commander/SetTCP "7e7b3d8cc25cf3ee8617fe16c36dee57")


