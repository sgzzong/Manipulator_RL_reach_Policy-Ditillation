;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetWorkspaceRobotPoses)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetWorkspaceRobotPoses (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEROBOTPOSES")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEROBOTPOSES"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEROBOTPOSESREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEROBOTPOSESREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEROBOTPOSESRESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEROBOTPOSESRESPONSE"))

(in-package "ROS")



(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest
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

(defclass niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse
  :super ros::object
  :slots (_status _message _poses ))

(defmethod niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _poses __poses)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_robot_msgs/RobotState[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_robot_msgs/RobotState[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_msgs/RobotState[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance niryo_robot_msgs::RobotState :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetWorkspaceRobotPoses
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPoses :md5sum-) "1ceacac04279b711025c0dca9155a376")
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPoses :datatype-) "niryo_robot_poses_handlers/GetWorkspaceRobotPoses")
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPoses :request) niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest)
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPoses :response) niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse)

(defmethod niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest
  (:response () (instance niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse :init)))

(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest :md5sum-) "1ceacac04279b711025c0dca9155a376")
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest :datatype-) "niryo_robot_poses_handlers/GetWorkspaceRobotPosesRequest")
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPosesRequest :definition-)
      "string name
---
int32 status
string message
niryo_robot_msgs/RobotState[] poses


================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Twist twist
float64 tcp_speed
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

(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse :md5sum-) "1ceacac04279b711025c0dca9155a376")
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse :datatype-) "niryo_robot_poses_handlers/GetWorkspaceRobotPosesResponse")
(setf (get niryo_robot_poses_handlers::GetWorkspaceRobotPosesResponse :definition-)
      "string name
---
int32 status
string message
niryo_robot_msgs/RobotState[] poses


================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Twist twist
float64 tcp_speed
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



(provide :niryo_robot_poses_handlers/GetWorkspaceRobotPoses "1ceacac04279b711025c0dca9155a376")


