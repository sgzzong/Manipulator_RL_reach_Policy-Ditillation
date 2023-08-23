;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_tools_commander::TCP)
  (if (not (find-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
    (make-package "NIRYO_ROBOT_TOOLS_COMMANDER"))
  (shadow 'TCP (find-package "NIRYO_ROBOT_TOOLS_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_TOOLS_COMMANDER::TCP")
  (make-package "NIRYO_ROBOT_TOOLS_COMMANDER::TCP"))

(in-package "ROS")
;;//! \htmlinclude TCP.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_tools_commander::TCP
  :super ros::object
  :slots (_enabled _position _rpy _orientation ))

(defmethod niryo_robot_tools_commander::TCP
  (:init
   (&key
    ((:enabled __enabled) nil)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _enabled __enabled)
   (setq _position __position)
   (setq _rpy __rpy)
   (setq _orientation __orientation)
   self)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
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
    ;; bool _enabled
    1
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
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_robot_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get niryo_robot_tools_commander::TCP :md5sum-) "7d931fce0b5b3aea000ef2cf21430552")
(setf (get niryo_robot_tools_commander::TCP :datatype-) "niryo_robot_tools_commander/TCP")
(setf (get niryo_robot_tools_commander::TCP :definition-)
      "bool enabled

geometry_msgs/Point position
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

")



(provide :niryo_robot_tools_commander/TCP "7d931fce0b5b3aea000ef2cf21430552")


