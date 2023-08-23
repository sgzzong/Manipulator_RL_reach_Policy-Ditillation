;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::ComputeTrajectory)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'ComputeTrajectory (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::COMPUTETRAJECTORY")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::COMPUTETRAJECTORY"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::COMPUTETRAJECTORYREQUEST")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::COMPUTETRAJECTORYREQUEST"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::COMPUTETRAJECTORYRESPONSE")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::COMPUTETRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass niryo_robot_arm_commander::ComputeTrajectoryRequest
  :super ros::object
  :slots (_list_poses _dist_smoothing ))

(defmethod niryo_robot_arm_commander::ComputeTrajectoryRequest
  (:init
   (&key
    ((:list_poses __list_poses) ())
    ((:dist_smoothing __dist_smoothing) 0.0)
    )
   (send-super :init)
   (setq _list_poses __list_poses)
   (setq _dist_smoothing (float __dist_smoothing))
   self)
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
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _list_poses
    (apply #'+ (send-all _list_poses :serialization-length)) 4
    ;; float32 _dist_smoothing
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _list_poses
     (write-long (length _list_poses) s)
     (dolist (elem _list_poses)
       (send elem :serialize s)
       )
     ;; float32 _dist_smoothing
       (sys::poke _dist_smoothing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _list_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _list_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _dist_smoothing
     (setq _dist_smoothing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::ComputeTrajectoryResponse
  :super ros::object
  :slots (_status _message _trajectory ))

(defmethod niryo_robot_arm_commander::ComputeTrajectoryResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _trajectory __trajectory)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::ComputeTrajectory
  :super ros::object
  :slots ())

(setf (get niryo_robot_arm_commander::ComputeTrajectory :md5sum-) "927443127076e7791a4d6aaadcb8af16")
(setf (get niryo_robot_arm_commander::ComputeTrajectory :datatype-) "niryo_robot_arm_commander/ComputeTrajectory")
(setf (get niryo_robot_arm_commander::ComputeTrajectory :request) niryo_robot_arm_commander::ComputeTrajectoryRequest)
(setf (get niryo_robot_arm_commander::ComputeTrajectory :response) niryo_robot_arm_commander::ComputeTrajectoryResponse)

(defmethod niryo_robot_arm_commander::ComputeTrajectoryRequest
  (:response () (instance niryo_robot_arm_commander::ComputeTrajectoryResponse :init)))

(setf (get niryo_robot_arm_commander::ComputeTrajectoryRequest :md5sum-) "927443127076e7791a4d6aaadcb8af16")
(setf (get niryo_robot_arm_commander::ComputeTrajectoryRequest :datatype-) "niryo_robot_arm_commander/ComputeTrajectoryRequest")
(setf (get niryo_robot_arm_commander::ComputeTrajectoryRequest :definition-)
      "geometry_msgs/Pose[] list_poses
float32 dist_smoothing


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

int32 status
string message
trajectory_msgs/JointTrajectory trajectory

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

(setf (get niryo_robot_arm_commander::ComputeTrajectoryResponse :md5sum-) "927443127076e7791a4d6aaadcb8af16")
(setf (get niryo_robot_arm_commander::ComputeTrajectoryResponse :datatype-) "niryo_robot_arm_commander/ComputeTrajectoryResponse")
(setf (get niryo_robot_arm_commander::ComputeTrajectoryResponse :definition-)
      "geometry_msgs/Pose[] list_poses
float32 dist_smoothing


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

int32 status
string message
trajectory_msgs/JointTrajectory trajectory

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



(provide :niryo_robot_arm_commander/ComputeTrajectory "927443127076e7791a4d6aaadcb8af16")


