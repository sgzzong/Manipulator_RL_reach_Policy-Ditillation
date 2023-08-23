;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::ArmMoveCommand)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'ArmMoveCommand (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ArmMoveCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(intern "*JOINTS*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*JOINTS* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*JOINTS* 0)
(intern "*POSE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*POSE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*POSE* 1)
(intern "*POSITION*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*POSITION* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*POSITION* 2)
(intern "*RPY*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*RPY* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*RPY* 3)
(intern "*POSE_QUAT*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*POSE_QUAT* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*POSE_QUAT* 4)
(intern "*LINEAR_POSE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*LINEAR_POSE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*LINEAR_POSE* 5)
(intern "*SHIFT_POSE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*SHIFT_POSE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*SHIFT_POSE* 6)
(intern "*SHIFT_LINEAR_POSE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*SHIFT_LINEAR_POSE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*SHIFT_LINEAR_POSE* 7)
(intern "*EXECUTE_TRAJ*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*EXECUTE_TRAJ* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*EXECUTE_TRAJ* 8)
(intern "*DRAW_SPIRAL*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*DRAW_SPIRAL* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*DRAW_SPIRAL* 9)
(intern "*DRAW_CIRCLE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*DRAW_CIRCLE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*DRAW_CIRCLE* 10)
(intern "*EXECUTE_FULL_TRAJ*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*EXECUTE_FULL_TRAJ* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*EXECUTE_FULL_TRAJ* 11)
(intern "*EXECUTE_RAW_TRAJ*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(shadow '*EXECUTE_RAW_TRAJ* (find-package "NIRYO_ROBOT_ARM_COMMANDER::ARMMOVECOMMAND"))
(defconstant niryo_robot_arm_commander::ArmMoveCommand::*EXECUTE_RAW_TRAJ* 12)

(defun niryo_robot_arm_commander::ArmMoveCommand-to-symbol (const)
  (cond
        ((= const 0) 'niryo_robot_arm_commander::ArmMoveCommand::*JOINTS*)
        ((= const 1) 'niryo_robot_arm_commander::ArmMoveCommand::*POSE*)
        ((= const 2) 'niryo_robot_arm_commander::ArmMoveCommand::*POSITION*)
        ((= const 3) 'niryo_robot_arm_commander::ArmMoveCommand::*RPY*)
        ((= const 4) 'niryo_robot_arm_commander::ArmMoveCommand::*POSE_QUAT*)
        ((= const 5) 'niryo_robot_arm_commander::ArmMoveCommand::*LINEAR_POSE*)
        ((= const 6) 'niryo_robot_arm_commander::ArmMoveCommand::*SHIFT_POSE*)
        ((= const 7) 'niryo_robot_arm_commander::ArmMoveCommand::*SHIFT_LINEAR_POSE*)
        ((= const 8) 'niryo_robot_arm_commander::ArmMoveCommand::*EXECUTE_TRAJ*)
        ((= const 9) 'niryo_robot_arm_commander::ArmMoveCommand::*DRAW_SPIRAL*)
        ((= const 10) 'niryo_robot_arm_commander::ArmMoveCommand::*DRAW_CIRCLE*)
        ((= const 11) 'niryo_robot_arm_commander::ArmMoveCommand::*EXECUTE_FULL_TRAJ*)
        ((= const 12) 'niryo_robot_arm_commander::ArmMoveCommand::*EXECUTE_RAW_TRAJ*)
        (t nil)))

(defclass niryo_robot_arm_commander::ArmMoveCommand
  :super ros::object
  :slots (_cmd_type _joints _position _rpy _orientation _shift _list_poses _dist_smoothing _trajectory _args ))

(defmethod niryo_robot_arm_commander::ArmMoveCommand
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:shift __shift) (instance niryo_robot_arm_commander::ShiftPose :init))
    ((:list_poses __list_poses) ())
    ((:dist_smoothing __dist_smoothing) 0.0)
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    ((:args __args) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _joints __joints)
   (setq _position __position)
   (setq _rpy __rpy)
   (setq _orientation __orientation)
   (setq _shift __shift)
   (setq _list_poses __list_poses)
   (setq _dist_smoothing (float __dist_smoothing))
   (setq _trajectory __trajectory)
   (setq _args __args)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
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
  (:shift
   (&rest __shift)
   (if (keywordp (car __shift))
       (send* _shift __shift)
     (progn
       (if __shift (setq _shift (car __shift)))
       _shift)))
  (:list_poses
   (&rest __list_poses)
   (if (keywordp (car __list_poses))
       (send* _list_poses __list_poses)
     (progn
       (if __list_poses (setq _list_poses (car __list_poses)))
       _list_poses)))
  (:dist_smoothing
   (&optional __dist_smoothing)
   (if __dist_smoothing (setq _dist_smoothing __dist_smoothing)) _dist_smoothing)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd_type
    4
    ;; float64[] _joints
    (* 8    (length _joints)) 4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_robot_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; niryo_robot_arm_commander/ShiftPose _shift
    (send _shift :serialization-length)
    ;; geometry_msgs/Pose[] _list_poses
    (apply #'+ (send-all _list_poses :serialization-length)) 4
    ;; float32 _dist_smoothing
    4
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ;; float64[] _args
    (* 8    (length _args)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd_type
       (write-long _cmd_type s)
     ;; float64[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; niryo_robot_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; niryo_robot_arm_commander/ShiftPose _shift
       (send _shift :serialize s)
     ;; geometry_msgs/Pose[] _list_poses
     (write-long (length _list_poses) s)
     (dolist (elem _list_poses)
       (send elem :serialize s)
       )
     ;; float32 _dist_smoothing
       (sys::poke _dist_smoothing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;; float64[] _args
     (write-long (length _args) s)
     (dotimes (i (length _args))
       (sys::poke (elt _args i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_robot_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; niryo_robot_arm_commander/ShiftPose _shift
     (send _shift :deserialize buf ptr-) (incf ptr- (send _shift :serialization-length))
   ;; geometry_msgs/Pose[] _list_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _list_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _dist_smoothing
     (setq _dist_smoothing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;; float64[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _args i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get niryo_robot_arm_commander::ArmMoveCommand :md5sum-) "63a3b03d75e1e8dce75aa338009e327c")
(setf (get niryo_robot_arm_commander::ArmMoveCommand :datatype-) "niryo_robot_arm_commander/ArmMoveCommand")
(setf (get niryo_robot_arm_commander::ArmMoveCommand :definition-)
      "int32 JOINTS = 0            # uses joints 
int32 POSE = 1              # uses position and rpy 
int32 POSITION = 2          # uses position
int32 RPY = 3               # uses rpy
int32 POSE_QUAT = 4         # uses position and orientation
int32 LINEAR_POSE = 5       # uses position and rpy
int32 SHIFT_POSE = 6        # uses shift
int32 SHIFT_LINEAR_POSE = 7 # uses shift
int32 EXECUTE_TRAJ = 8      # uses dist_smoothing, list_poses
int32 DRAW_SPIRAL = 9
int32 DRAW_CIRCLE = 10
int32 EXECUTE_FULL_TRAJ = 11
int32 EXECUTE_RAW_TRAJ = 12

int32 cmd_type

float64[] joints
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy
geometry_msgs/Quaternion orientation
niryo_robot_arm_commander/ShiftPose shift

geometry_msgs/Pose[] list_poses
float32 dist_smoothing

trajectory_msgs/JointTrajectory trajectory

float64[] args

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
MSG: niryo_robot_arm_commander/ShiftPose
int32 axis_number
float64 value

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :niryo_robot_arm_commander/ArmMoveCommand "63a3b03d75e1e8dce75aa338009e327c")


