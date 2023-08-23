;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::GetTrajectory)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'GetTrajectory (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETTRAJECTORY")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETTRAJECTORY"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETTRAJECTORYREQUEST")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETTRAJECTORYREQUEST"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::GETTRAJECTORYRESPONSE")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::GETTRAJECTORYRESPONSE"))

(in-package "ROS")



(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass niryo_robot_arm_commander::GetTrajectoryRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_arm_commander::GetTrajectoryRequest
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

(defclass niryo_robot_arm_commander::GetTrajectoryResponse
  :super ros::object
  :slots (_status _message _trajectory ))

(defmethod niryo_robot_arm_commander::GetTrajectoryResponse
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

(defclass niryo_robot_arm_commander::GetTrajectory
  :super ros::object
  :slots ())

(setf (get niryo_robot_arm_commander::GetTrajectory :md5sum-) "0c4d437fb09c429b98b4c970eb404814")
(setf (get niryo_robot_arm_commander::GetTrajectory :datatype-) "niryo_robot_arm_commander/GetTrajectory")
(setf (get niryo_robot_arm_commander::GetTrajectory :request) niryo_robot_arm_commander::GetTrajectoryRequest)
(setf (get niryo_robot_arm_commander::GetTrajectory :response) niryo_robot_arm_commander::GetTrajectoryResponse)

(defmethod niryo_robot_arm_commander::GetTrajectoryRequest
  (:response () (instance niryo_robot_arm_commander::GetTrajectoryResponse :init)))

(setf (get niryo_robot_arm_commander::GetTrajectoryRequest :md5sum-) "0c4d437fb09c429b98b4c970eb404814")
(setf (get niryo_robot_arm_commander::GetTrajectoryRequest :datatype-) "niryo_robot_arm_commander/GetTrajectoryRequest")
(setf (get niryo_robot_arm_commander::GetTrajectoryRequest :definition-)
      "string name
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

(setf (get niryo_robot_arm_commander::GetTrajectoryResponse :md5sum-) "0c4d437fb09c429b98b4c970eb404814")
(setf (get niryo_robot_arm_commander::GetTrajectoryResponse :datatype-) "niryo_robot_arm_commander/GetTrajectoryResponse")
(setf (get niryo_robot_arm_commander::GetTrajectoryResponse :definition-)
      "string name
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



(provide :niryo_robot_arm_commander/GetTrajectory "0c4d437fb09c429b98b4c970eb404814")


