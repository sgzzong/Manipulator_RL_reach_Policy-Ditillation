;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_arm_commander::ManageTrajectory)
  (if (not (find-package "NIRYO_ROBOT_ARM_COMMANDER"))
    (make-package "NIRYO_ROBOT_ARM_COMMANDER"))
  (shadow 'ManageTrajectory (find-package "NIRYO_ROBOT_ARM_COMMANDER")))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORY")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORY"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(unless (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYRESPONSE")
  (make-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(intern "*DELETE_ALL*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*DELETE_ALL* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*DELETE_ALL* -2)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*DELETE* -1)
(intern "*SAVE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*SAVE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*SAVE* 1)
(intern "*SAVE_LAST_LEARNED*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*SAVE_LAST_LEARNED* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*SAVE_LAST_LEARNED* 2)
(intern "*UPDATE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*UPDATE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*UPDATE* 3)
(intern "*EXECUTE*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*EXECUTE* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*EXECUTE* 4)
(intern "*EXECUTE_REGISTERED*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*EXECUTE_REGISTERED* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*EXECUTE_REGISTERED* 5)
(intern "*GO_TO_FIRST_POINT*" (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(shadow '*GO_TO_FIRST_POINT* (find-package "NIRYO_ROBOT_ARM_COMMANDER::MANAGETRAJECTORYREQUEST"))
(defconstant niryo_robot_arm_commander::ManageTrajectoryRequest::*GO_TO_FIRST_POINT* 6)

(defun niryo_robot_arm_commander::ManageTrajectoryRequest-to-symbol (const)
  (cond
        ((= const -2) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*DELETE_ALL*)
        ((= const -1) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*DELETE*)
        ((= const 1) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*SAVE*)
        ((= const 2) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*SAVE_LAST_LEARNED*)
        ((= const 3) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*UPDATE*)
        ((= const 4) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*EXECUTE*)
        ((= const 5) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*EXECUTE_REGISTERED*)
        ((= const 6) 'niryo_robot_arm_commander::ManageTrajectoryRequest::*GO_TO_FIRST_POINT*)
        (t nil)))

(defclass niryo_robot_arm_commander::ManageTrajectoryRequest
  :super ros::object
  :slots (_cmd _name _new_name _description _trajectory ))

(defmethod niryo_robot_arm_commander::ManageTrajectoryRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:name __name) "")
    ((:new_name __new_name) "")
    ((:description __description) "")
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _name (string __name))
   (setq _new_name (string __new_name))
   (setq _description (string __description))
   (setq _trajectory __trajectory)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:new_name
   (&optional __new_name)
   (if __new_name (setq _new_name __new_name)) _new_name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
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
    ;; int32 _cmd
    4
    ;; string _name
    4 (length _name)
    ;; string _new_name
    4 (length _new_name)
    ;; string _description
    4 (length _description)
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _new_name
       (write-long (length _new_name) s) (princ _new_name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _new_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_arm_commander::ManageTrajectoryResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_arm_commander::ManageTrajectoryResponse
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

(defclass niryo_robot_arm_commander::ManageTrajectory
  :super ros::object
  :slots ())

(setf (get niryo_robot_arm_commander::ManageTrajectory :md5sum-) "56832e1cc02845385509a4bd74b47ab1")
(setf (get niryo_robot_arm_commander::ManageTrajectory :datatype-) "niryo_robot_arm_commander/ManageTrajectory")
(setf (get niryo_robot_arm_commander::ManageTrajectory :request) niryo_robot_arm_commander::ManageTrajectoryRequest)
(setf (get niryo_robot_arm_commander::ManageTrajectory :response) niryo_robot_arm_commander::ManageTrajectoryResponse)

(defmethod niryo_robot_arm_commander::ManageTrajectoryRequest
  (:response () (instance niryo_robot_arm_commander::ManageTrajectoryResponse :init)))

(setf (get niryo_robot_arm_commander::ManageTrajectoryRequest :md5sum-) "56832e1cc02845385509a4bd74b47ab1")
(setf (get niryo_robot_arm_commander::ManageTrajectoryRequest :datatype-) "niryo_robot_arm_commander/ManageTrajectoryRequest")
(setf (get niryo_robot_arm_commander::ManageTrajectoryRequest :definition-)
      "int32 cmd
int32 DELETE_ALL = -2
int32 DELETE = -1
int32 SAVE = 1
int32 SAVE_LAST_LEARNED = 2
int32 UPDATE = 3
int32 EXECUTE = 4
int32 EXECUTE_REGISTERED = 5
int32 GO_TO_FIRST_POINT = 6

string name
string new_name
string description

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
---
int32 status
string message


")

(setf (get niryo_robot_arm_commander::ManageTrajectoryResponse :md5sum-) "56832e1cc02845385509a4bd74b47ab1")
(setf (get niryo_robot_arm_commander::ManageTrajectoryResponse :datatype-) "niryo_robot_arm_commander/ManageTrajectoryResponse")
(setf (get niryo_robot_arm_commander::ManageTrajectoryResponse :definition-)
      "int32 cmd
int32 DELETE_ALL = -2
int32 DELETE = -1
int32 SAVE = 1
int32 SAVE_LAST_LEARNED = 2
int32 UPDATE = 3
int32 EXECUTE = 4
int32 EXECUTE_REGISTERED = 5
int32 GO_TO_FIRST_POINT = 6

string name
string new_name
string description

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
---
int32 status
string message


")



(provide :niryo_robot_arm_commander/ManageTrajectory "56832e1cc02845385509a4bd74b47ab1")


