;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetPose)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetPose (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETPOSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETPOSE"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETPOSEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETPOSEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETPOSERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETPOSERESPONSE"))

(in-package "ROS")





(defclass niryo_robot_poses_handlers::GetPoseRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_poses_handlers::GetPoseRequest
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

(defclass niryo_robot_poses_handlers::GetPoseResponse
  :super ros::object
  :slots (_status _message _pose ))

(defmethod niryo_robot_poses_handlers::GetPoseResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:pose __pose) (instance niryo_robot_poses_handlers::NiryoPose :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _pose __pose)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; niryo_robot_poses_handlers/NiryoPose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; niryo_robot_poses_handlers/NiryoPose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; niryo_robot_poses_handlers/NiryoPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetPose
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetPose :md5sum-) "c35fb38bb51646ef698dd59196a0f931")
(setf (get niryo_robot_poses_handlers::GetPose :datatype-) "niryo_robot_poses_handlers/GetPose")
(setf (get niryo_robot_poses_handlers::GetPose :request) niryo_robot_poses_handlers::GetPoseRequest)
(setf (get niryo_robot_poses_handlers::GetPose :response) niryo_robot_poses_handlers::GetPoseResponse)

(defmethod niryo_robot_poses_handlers::GetPoseRequest
  (:response () (instance niryo_robot_poses_handlers::GetPoseResponse :init)))

(setf (get niryo_robot_poses_handlers::GetPoseRequest :md5sum-) "c35fb38bb51646ef698dd59196a0f931")
(setf (get niryo_robot_poses_handlers::GetPoseRequest :datatype-) "niryo_robot_poses_handlers/GetPoseRequest")
(setf (get niryo_robot_poses_handlers::GetPoseRequest :definition-)
      "string name
---
int32 status
string message
niryo_robot_poses_handlers/NiryoPose pose


================================================================================
MSG: niryo_robot_poses_handlers/NiryoPose
string name
string description

float64[] joints 
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

(setf (get niryo_robot_poses_handlers::GetPoseResponse :md5sum-) "c35fb38bb51646ef698dd59196a0f931")
(setf (get niryo_robot_poses_handlers::GetPoseResponse :datatype-) "niryo_robot_poses_handlers/GetPoseResponse")
(setf (get niryo_robot_poses_handlers::GetPoseResponse :definition-)
      "string name
---
int32 status
string message
niryo_robot_poses_handlers/NiryoPose pose


================================================================================
MSG: niryo_robot_poses_handlers/NiryoPose
string name
string description

float64[] joints 
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



(provide :niryo_robot_poses_handlers/GetPose "c35fb38bb51646ef698dd59196a0f931")


