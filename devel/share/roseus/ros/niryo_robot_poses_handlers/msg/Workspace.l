;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::Workspace)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'Workspace (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::WORKSPACE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::WORKSPACE"))

(in-package "ROS")
;;//! \htmlinclude Workspace.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_poses_handlers::Workspace
  :super ros::object
  :slots (_name _description _points _poses ))

(defmethod niryo_robot_poses_handlers::Workspace
  (:init
   (&key
    ((:name __name) "")
    ((:description __description) "")
    ((:points __points) ())
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _points __points)
   (setq _poses __poses)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
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
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; niryo_robot_msgs/RobotState[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; niryo_robot_msgs/RobotState[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(setf (get niryo_robot_poses_handlers::Workspace :md5sum-) "58d1f558ac9fb2a8ca645fc28fad5315")
(setf (get niryo_robot_poses_handlers::Workspace :datatype-) "niryo_robot_poses_handlers/Workspace")
(setf (get niryo_robot_poses_handlers::Workspace :definition-)
      "string name # maximum lenght of workspace's name is 30 characters
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
float64 z
")



(provide :niryo_robot_poses_handlers/Workspace "58d1f558ac9fb2a8ca645fc28fad5315")


