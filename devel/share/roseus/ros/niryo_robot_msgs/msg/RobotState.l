;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_msgs::RobotState)
  (if (not (find-package "NIRYO_ROBOT_MSGS"))
    (make-package "NIRYO_ROBOT_MSGS"))
  (shadow 'RobotState (find-package "NIRYO_ROBOT_MSGS")))
(unless (find-package "NIRYO_ROBOT_MSGS::ROBOTSTATE")
  (make-package "NIRYO_ROBOT_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_robot_msgs::RobotState
  :super ros::object
  :slots (_position _rpy _orientation _twist _tcp_speed ))

(defmethod niryo_robot_msgs::RobotState
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:tcp_speed __tcp_speed) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _rpy __rpy)
   (setq _orientation __orientation)
   (setq _twist __twist)
   (setq _tcp_speed (float __tcp_speed))
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
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:tcp_speed
   (&optional __tcp_speed)
   (if __tcp_speed (setq _tcp_speed __tcp_speed)) _tcp_speed)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_robot_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; float64 _tcp_speed
    8
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
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; float64 _tcp_speed
       (sys::poke _tcp_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; float64 _tcp_speed
     (setq _tcp_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get niryo_robot_msgs::RobotState :md5sum-) "6118febdb79654bdcef05836663ef012")
(setf (get niryo_robot_msgs::RobotState :datatype-) "niryo_robot_msgs/RobotState")
(setf (get niryo_robot_msgs::RobotState :definition-)
      "geometry_msgs/Point position
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
float64 z
")



(provide :niryo_robot_msgs/RobotState "6118febdb79654bdcef05836663ef012")


