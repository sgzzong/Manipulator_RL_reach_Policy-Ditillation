;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::ManageWorkspace)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'ManageWorkspace (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACE"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACERESPONSE"))

(in-package "ROS")





(intern "*SAVE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(shadow '*SAVE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageWorkspaceRequest::*SAVE* 1)
(intern "*SAVE_WITH_POINTS*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(shadow '*SAVE_WITH_POINTS* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageWorkspaceRequest::*SAVE_WITH_POINTS* 2)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEWORKSPACEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageWorkspaceRequest::*DELETE* -1)

(defun niryo_robot_poses_handlers::ManageWorkspaceRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_poses_handlers::ManageWorkspaceRequest::*SAVE*)
        ((= const 2) 'niryo_robot_poses_handlers::ManageWorkspaceRequest::*SAVE_WITH_POINTS*)
        ((= const -1) 'niryo_robot_poses_handlers::ManageWorkspaceRequest::*DELETE*)
        (t nil)))

(defclass niryo_robot_poses_handlers::ManageWorkspaceRequest
  :super ros::object
  :slots (_cmd _workspace ))

(defmethod niryo_robot_poses_handlers::ManageWorkspaceRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:workspace __workspace) (instance niryo_robot_poses_handlers::Workspace :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _workspace __workspace)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:workspace
   (&rest __workspace)
   (if (keywordp (car __workspace))
       (send* _workspace __workspace)
     (progn
       (if __workspace (setq _workspace (car __workspace)))
       _workspace)))
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; niryo_robot_poses_handlers/Workspace _workspace
    (send _workspace :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; niryo_robot_poses_handlers/Workspace _workspace
       (send _workspace :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_robot_poses_handlers/Workspace _workspace
     (send _workspace :deserialize buf ptr-) (incf ptr- (send _workspace :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::ManageWorkspaceResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_poses_handlers::ManageWorkspaceResponse
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

(defclass niryo_robot_poses_handlers::ManageWorkspace
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::ManageWorkspace :md5sum-) "133fe29c11881f21fe8ab6e5383e730f")
(setf (get niryo_robot_poses_handlers::ManageWorkspace :datatype-) "niryo_robot_poses_handlers/ManageWorkspace")
(setf (get niryo_robot_poses_handlers::ManageWorkspace :request) niryo_robot_poses_handlers::ManageWorkspaceRequest)
(setf (get niryo_robot_poses_handlers::ManageWorkspace :response) niryo_robot_poses_handlers::ManageWorkspaceResponse)

(defmethod niryo_robot_poses_handlers::ManageWorkspaceRequest
  (:response () (instance niryo_robot_poses_handlers::ManageWorkspaceResponse :init)))

(setf (get niryo_robot_poses_handlers::ManageWorkspaceRequest :md5sum-) "133fe29c11881f21fe8ab6e5383e730f")
(setf (get niryo_robot_poses_handlers::ManageWorkspaceRequest :datatype-) "niryo_robot_poses_handlers/ManageWorkspaceRequest")
(setf (get niryo_robot_poses_handlers::ManageWorkspaceRequest :definition-)
      "int32 SAVE = 1
int32 SAVE_WITH_POINTS = 2
int32 DELETE = -1

int32 cmd

niryo_robot_poses_handlers/Workspace workspace


================================================================================
MSG: niryo_robot_poses_handlers/Workspace
string name # maximum lenght of workspace's name is 30 characters
string description

geometry_msgs/Point[] points
niryo_robot_msgs/RobotState[] poses

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Twist twist
float64 tcp_speed
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
---
int32 status
string message

")

(setf (get niryo_robot_poses_handlers::ManageWorkspaceResponse :md5sum-) "133fe29c11881f21fe8ab6e5383e730f")
(setf (get niryo_robot_poses_handlers::ManageWorkspaceResponse :datatype-) "niryo_robot_poses_handlers/ManageWorkspaceResponse")
(setf (get niryo_robot_poses_handlers::ManageWorkspaceResponse :definition-)
      "int32 SAVE = 1
int32 SAVE_WITH_POINTS = 2
int32 DELETE = -1

int32 cmd

niryo_robot_poses_handlers/Workspace workspace


================================================================================
MSG: niryo_robot_poses_handlers/Workspace
string name # maximum lenght of workspace's name is 30 characters
string description

geometry_msgs/Point[] points
niryo_robot_msgs/RobotState[] poses

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: niryo_robot_msgs/RobotState
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation

geometry_msgs/Twist twist
float64 tcp_speed
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
---
int32 status
string message

")



(provide :niryo_robot_poses_handlers/ManageWorkspace "133fe29c11881f21fe8ab6e5383e730f")


