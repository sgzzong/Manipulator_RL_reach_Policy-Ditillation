;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::DynamicFrame)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'DynamicFrame (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::DYNAMICFRAME")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::DYNAMICFRAME"))

(in-package "ROS")
;;//! \htmlinclude DynamicFrame.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_poses_handlers::DynamicFrame
  :super ros::object
  :slots (_name _new_name _description _belong_to_workspace _position _rpy _orientation _points _poses ))

(defmethod niryo_robot_poses_handlers::DynamicFrame
  (:init
   (&key
    ((:name __name) "")
    ((:new_name __new_name) "")
    ((:description __description) "")
    ((:belong_to_workspace __belong_to_workspace) nil)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:points __points) ())
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _new_name (string __new_name))
   (setq _description (string __description))
   (setq _belong_to_workspace __belong_to_workspace)
   (setq _position __position)
   (setq _rpy __rpy)
   (setq _orientation __orientation)
   (setq _points __points)
   (setq _poses __poses)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:new_name
   (&optional __new_name)
   (if __new_name (setq _new_name __new_name)) _new_name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:belong_to_workspace
   (&optional (__belong_to_workspace :null))
   (if (not (eq __belong_to_workspace :null)) (setq _belong_to_workspace __belong_to_workspace)) _belong_to_workspace)
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
    ;; string _new_name
    4 (length _new_name)
    ;; string _description
    4 (length _description)
    ;; bool _belong_to_workspace
    1
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_robot_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
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
     ;; string _new_name
       (write-long (length _new_name) s) (princ _new_name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; bool _belong_to_workspace
       (if _belong_to_workspace (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; niryo_robot_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
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
   ;; string _new_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _belong_to_workspace
     (setq _belong_to_workspace (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_robot_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
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

(setf (get niryo_robot_poses_handlers::DynamicFrame :md5sum-) "c6069d0074cbd2b1a688f128f878229b")
(setf (get niryo_robot_poses_handlers::DynamicFrame :datatype-) "niryo_robot_poses_handlers/DynamicFrame")
(setf (get niryo_robot_poses_handlers::DynamicFrame :definition-)
      "string name # maximum lenght of dynamic_frame's name is 30 characters
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
float64 z
")



(provide :niryo_robot_poses_handlers/DynamicFrame "c6069d0074cbd2b1a688f128f878229b")


