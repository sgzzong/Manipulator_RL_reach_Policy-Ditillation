;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetDynamicFrame)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetDynamicFrame (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETDYNAMICFRAME")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETDYNAMICFRAME"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETDYNAMICFRAMEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETDYNAMICFRAMEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETDYNAMICFRAMERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETDYNAMICFRAMERESPONSE"))

(in-package "ROS")





(defclass niryo_robot_poses_handlers::GetDynamicFrameRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_poses_handlers::GetDynamicFrameRequest
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

(defclass niryo_robot_poses_handlers::GetDynamicFrameResponse
  :super ros::object
  :slots (_status _message _dynamic_frame ))

(defmethod niryo_robot_poses_handlers::GetDynamicFrameResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:dynamic_frame __dynamic_frame) (instance niryo_robot_poses_handlers::DynamicFrame :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _dynamic_frame __dynamic_frame)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:dynamic_frame
   (&rest __dynamic_frame)
   (if (keywordp (car __dynamic_frame))
       (send* _dynamic_frame __dynamic_frame)
     (progn
       (if __dynamic_frame (setq _dynamic_frame (car __dynamic_frame)))
       _dynamic_frame)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_robot_poses_handlers/DynamicFrame _dynamic_frame
    (send _dynamic_frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_robot_poses_handlers/DynamicFrame _dynamic_frame
       (send _dynamic_frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_poses_handlers/DynamicFrame _dynamic_frame
     (send _dynamic_frame :deserialize buf ptr-) (incf ptr- (send _dynamic_frame :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetDynamicFrame
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetDynamicFrame :md5sum-) "c08b2e00443b99fd74da4f2fecba27bb")
(setf (get niryo_robot_poses_handlers::GetDynamicFrame :datatype-) "niryo_robot_poses_handlers/GetDynamicFrame")
(setf (get niryo_robot_poses_handlers::GetDynamicFrame :request) niryo_robot_poses_handlers::GetDynamicFrameRequest)
(setf (get niryo_robot_poses_handlers::GetDynamicFrame :response) niryo_robot_poses_handlers::GetDynamicFrameResponse)

(defmethod niryo_robot_poses_handlers::GetDynamicFrameRequest
  (:response () (instance niryo_robot_poses_handlers::GetDynamicFrameResponse :init)))

(setf (get niryo_robot_poses_handlers::GetDynamicFrameRequest :md5sum-) "c08b2e00443b99fd74da4f2fecba27bb")
(setf (get niryo_robot_poses_handlers::GetDynamicFrameRequest :datatype-) "niryo_robot_poses_handlers/GetDynamicFrameRequest")
(setf (get niryo_robot_poses_handlers::GetDynamicFrameRequest :definition-)
      "string name
---
int32 status
string message
niryo_robot_poses_handlers/DynamicFrame dynamic_frame

================================================================================
MSG: niryo_robot_poses_handlers/DynamicFrame
string name # maximum lenght of dynamic_frame's name is 30 characters
string new_name
string description
bool belong_to_workspace

geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Point[] points
niryo_robot_msgs/RobotState[] poses
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

================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Twist twist
float64 tcp_speed
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get niryo_robot_poses_handlers::GetDynamicFrameResponse :md5sum-) "c08b2e00443b99fd74da4f2fecba27bb")
(setf (get niryo_robot_poses_handlers::GetDynamicFrameResponse :datatype-) "niryo_robot_poses_handlers/GetDynamicFrameResponse")
(setf (get niryo_robot_poses_handlers::GetDynamicFrameResponse :definition-)
      "string name
---
int32 status
string message
niryo_robot_poses_handlers/DynamicFrame dynamic_frame

================================================================================
MSG: niryo_robot_poses_handlers/DynamicFrame
string name # maximum lenght of dynamic_frame's name is 30 characters
string new_name
string description
bool belong_to_workspace

geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Point[] points
niryo_robot_msgs/RobotState[] poses
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

================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Twist twist
float64 tcp_speed
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :niryo_robot_poses_handlers/GetDynamicFrame "c08b2e00443b99fd74da4f2fecba27bb")


