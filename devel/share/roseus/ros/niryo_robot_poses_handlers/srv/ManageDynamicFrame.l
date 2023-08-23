;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::ManageDynamicFrame)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'ManageDynamicFrame (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAME")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAME"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMERESPONSE"))

(in-package "ROS")





(intern "*SAVE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(shadow '*SAVE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageDynamicFrameRequest::*SAVE* 1)
(intern "*SAVE_WITH_POINTS*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(shadow '*SAVE_WITH_POINTS* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageDynamicFrameRequest::*SAVE_WITH_POINTS* 2)
(intern "*EDIT*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(shadow '*EDIT* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageDynamicFrameRequest::*EDIT* 3)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEDYNAMICFRAMEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManageDynamicFrameRequest::*DELETE* -1)

(defun niryo_robot_poses_handlers::ManageDynamicFrameRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_poses_handlers::ManageDynamicFrameRequest::*SAVE*)
        ((= const 2) 'niryo_robot_poses_handlers::ManageDynamicFrameRequest::*SAVE_WITH_POINTS*)
        ((= const 3) 'niryo_robot_poses_handlers::ManageDynamicFrameRequest::*EDIT*)
        ((= const -1) 'niryo_robot_poses_handlers::ManageDynamicFrameRequest::*DELETE*)
        (t nil)))

(defclass niryo_robot_poses_handlers::ManageDynamicFrameRequest
  :super ros::object
  :slots (_cmd _dynamic_frame ))

(defmethod niryo_robot_poses_handlers::ManageDynamicFrameRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:dynamic_frame __dynamic_frame) (instance niryo_robot_poses_handlers::DynamicFrame :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _dynamic_frame __dynamic_frame)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
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
    ;; int32 _cmd
    4
    ;; niryo_robot_poses_handlers/DynamicFrame _dynamic_frame
    (send _dynamic_frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; niryo_robot_poses_handlers/DynamicFrame _dynamic_frame
       (send _dynamic_frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_robot_poses_handlers/DynamicFrame _dynamic_frame
     (send _dynamic_frame :deserialize buf ptr-) (incf ptr- (send _dynamic_frame :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::ManageDynamicFrameResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_poses_handlers::ManageDynamicFrameResponse
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

(defclass niryo_robot_poses_handlers::ManageDynamicFrame
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::ManageDynamicFrame :md5sum-) "39e0d902c65a5da5c59434304dc86dd9")
(setf (get niryo_robot_poses_handlers::ManageDynamicFrame :datatype-) "niryo_robot_poses_handlers/ManageDynamicFrame")
(setf (get niryo_robot_poses_handlers::ManageDynamicFrame :request) niryo_robot_poses_handlers::ManageDynamicFrameRequest)
(setf (get niryo_robot_poses_handlers::ManageDynamicFrame :response) niryo_robot_poses_handlers::ManageDynamicFrameResponse)

(defmethod niryo_robot_poses_handlers::ManageDynamicFrameRequest
  (:response () (instance niryo_robot_poses_handlers::ManageDynamicFrameResponse :init)))

(setf (get niryo_robot_poses_handlers::ManageDynamicFrameRequest :md5sum-) "39e0d902c65a5da5c59434304dc86dd9")
(setf (get niryo_robot_poses_handlers::ManageDynamicFrameRequest :datatype-) "niryo_robot_poses_handlers/ManageDynamicFrameRequest")
(setf (get niryo_robot_poses_handlers::ManageDynamicFrameRequest :definition-)
      "int32 SAVE = 1
int32 SAVE_WITH_POINTS = 2
int32 EDIT = 3
int32 DELETE = -1

int32 cmd

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
---
int32 status
string message

")

(setf (get niryo_robot_poses_handlers::ManageDynamicFrameResponse :md5sum-) "39e0d902c65a5da5c59434304dc86dd9")
(setf (get niryo_robot_poses_handlers::ManageDynamicFrameResponse :datatype-) "niryo_robot_poses_handlers/ManageDynamicFrameResponse")
(setf (get niryo_robot_poses_handlers::ManageDynamicFrameResponse :definition-)
      "int32 SAVE = 1
int32 SAVE_WITH_POINTS = 2
int32 EDIT = 3
int32 DELETE = -1

int32 cmd

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
---
int32 status
string message

")



(provide :niryo_robot_poses_handlers/ManageDynamicFrame "39e0d902c65a5da5c59434304dc86dd9")


