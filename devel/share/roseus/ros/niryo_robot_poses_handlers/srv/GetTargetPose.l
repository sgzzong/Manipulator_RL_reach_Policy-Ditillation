;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetTargetPose)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetTargetPose (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTARGETPOSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTARGETPOSE"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTARGETPOSEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTARGETPOSEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTARGETPOSERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTARGETPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_poses_handlers::GetTargetPoseRequest
  :super ros::object
  :slots (_workspace _height_offset _x_rel _y_rel _yaw_rel ))

(defmethod niryo_robot_poses_handlers::GetTargetPoseRequest
  (:init
   (&key
    ((:workspace __workspace) "")
    ((:height_offset __height_offset) 0.0)
    ((:x_rel __x_rel) 0.0)
    ((:y_rel __y_rel) 0.0)
    ((:yaw_rel __yaw_rel) 0.0)
    )
   (send-super :init)
   (setq _workspace (string __workspace))
   (setq _height_offset (float __height_offset))
   (setq _x_rel (float __x_rel))
   (setq _y_rel (float __y_rel))
   (setq _yaw_rel (float __yaw_rel))
   self)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:height_offset
   (&optional __height_offset)
   (if __height_offset (setq _height_offset __height_offset)) _height_offset)
  (:x_rel
   (&optional __x_rel)
   (if __x_rel (setq _x_rel __x_rel)) _x_rel)
  (:y_rel
   (&optional __y_rel)
   (if __y_rel (setq _y_rel __y_rel)) _y_rel)
  (:yaw_rel
   (&optional __yaw_rel)
   (if __yaw_rel (setq _yaw_rel __yaw_rel)) _yaw_rel)
  (:serialization-length
   ()
   (+
    ;; string _workspace
    4 (length _workspace)
    ;; float32 _height_offset
    4
    ;; float32 _x_rel
    4
    ;; float32 _y_rel
    4
    ;; float32 _yaw_rel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;; float32 _height_offset
       (sys::poke _height_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_rel
       (sys::poke _x_rel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_rel
       (sys::poke _y_rel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rel
       (sys::poke _yaw_rel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _height_offset
     (setq _height_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_rel
     (setq _x_rel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_rel
     (setq _y_rel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rel
     (setq _yaw_rel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetTargetPoseResponse
  :super ros::object
  :slots (_status _message _target_pose ))

(defmethod niryo_robot_poses_handlers::GetTargetPoseResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:target_pose __target_pose) (instance niryo_robot_msgs::RobotState :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _target_pose __target_pose)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_robot_msgs/RobotState _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_robot_msgs/RobotState _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_msgs/RobotState _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetTargetPose
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetTargetPose :md5sum-) "efcedb79813666c14f4931b17845a40d")
(setf (get niryo_robot_poses_handlers::GetTargetPose :datatype-) "niryo_robot_poses_handlers/GetTargetPose")
(setf (get niryo_robot_poses_handlers::GetTargetPose :request) niryo_robot_poses_handlers::GetTargetPoseRequest)
(setf (get niryo_robot_poses_handlers::GetTargetPose :response) niryo_robot_poses_handlers::GetTargetPoseResponse)

(defmethod niryo_robot_poses_handlers::GetTargetPoseRequest
  (:response () (instance niryo_robot_poses_handlers::GetTargetPoseResponse :init)))

(setf (get niryo_robot_poses_handlers::GetTargetPoseRequest :md5sum-) "efcedb79813666c14f4931b17845a40d")
(setf (get niryo_robot_poses_handlers::GetTargetPoseRequest :datatype-) "niryo_robot_poses_handlers/GetTargetPoseRequest")
(setf (get niryo_robot_poses_handlers::GetTargetPoseRequest :definition-)
      "string workspace
float32 height_offset
float32 x_rel
float32 y_rel
float32 yaw_rel
---
int32 status
string message
niryo_robot_msgs/RobotState target_pose


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

(setf (get niryo_robot_poses_handlers::GetTargetPoseResponse :md5sum-) "efcedb79813666c14f4931b17845a40d")
(setf (get niryo_robot_poses_handlers::GetTargetPoseResponse :datatype-) "niryo_robot_poses_handlers/GetTargetPoseResponse")
(setf (get niryo_robot_poses_handlers::GetTargetPoseResponse :definition-)
      "string workspace
float32 height_offset
float32 x_rel
float32 y_rel
float32 yaw_rel
---
int32 status
string message
niryo_robot_msgs/RobotState target_pose


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



(provide :niryo_robot_poses_handlers/GetTargetPose "efcedb79813666c14f4931b17845a40d")


