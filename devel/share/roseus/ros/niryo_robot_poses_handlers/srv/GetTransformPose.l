;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetTransformPose)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetTransformPose (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRANSFORMPOSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRANSFORMPOSE"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRANSFORMPOSEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRANSFORMPOSEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRANSFORMPOSERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETTRANSFORMPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NIRYO_ROBOT_MSGS"))
  (ros::roseus-add-msgs "niryo_robot_msgs"))


(defclass niryo_robot_poses_handlers::GetTransformPoseRequest
  :super ros::object
  :slots (_source_frame _local_frame _position _rpy ))

(defmethod niryo_robot_poses_handlers::GetTransformPoseRequest
  (:init
   (&key
    ((:source_frame __source_frame) "")
    ((:local_frame __local_frame) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    )
   (send-super :init)
   (setq _source_frame (string __source_frame))
   (setq _local_frame (string __local_frame))
   (setq _position __position)
   (setq _rpy __rpy)
   self)
  (:source_frame
   (&optional __source_frame)
   (if __source_frame (setq _source_frame __source_frame)) _source_frame)
  (:local_frame
   (&optional __local_frame)
   (if __local_frame (setq _local_frame __local_frame)) _local_frame)
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
  (:serialization-length
   ()
   (+
    ;; string _source_frame
    4 (length _source_frame)
    ;; string _local_frame
    4 (length _local_frame)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_robot_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source_frame
       (write-long (length _source_frame) s) (princ _source_frame s)
     ;; string _local_frame
       (write-long (length _local_frame) s) (princ _local_frame s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; niryo_robot_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _local_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _local_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_robot_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetTransformPoseResponse
  :super ros::object
  :slots (_status _message _position _rpy ))

(defmethod niryo_robot_poses_handlers::GetTransformPoseResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:rpy __rpy) (instance niryo_robot_msgs::RPY :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _position __position)
   (setq _rpy __rpy)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
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
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; niryo_robot_msgs/RPY _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; niryo_robot_msgs/RPY _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; niryo_robot_msgs/RPY _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetTransformPose
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetTransformPose :md5sum-) "65fe6112339c0f055bdcec45f6729881")
(setf (get niryo_robot_poses_handlers::GetTransformPose :datatype-) "niryo_robot_poses_handlers/GetTransformPose")
(setf (get niryo_robot_poses_handlers::GetTransformPose :request) niryo_robot_poses_handlers::GetTransformPoseRequest)
(setf (get niryo_robot_poses_handlers::GetTransformPose :response) niryo_robot_poses_handlers::GetTransformPoseResponse)

(defmethod niryo_robot_poses_handlers::GetTransformPoseRequest
  (:response () (instance niryo_robot_poses_handlers::GetTransformPoseResponse :init)))

(setf (get niryo_robot_poses_handlers::GetTransformPoseRequest :md5sum-) "65fe6112339c0f055bdcec45f6729881")
(setf (get niryo_robot_poses_handlers::GetTransformPoseRequest :datatype-) "niryo_robot_poses_handlers/GetTransformPoseRequest")
(setf (get niryo_robot_poses_handlers::GetTransformPoseRequest :definition-)
      "string source_frame
string local_frame

geometry_msgs/Point position
niryo_robot_msgs/RPY rpy

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
---
int32 status
string message
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy

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
")

(setf (get niryo_robot_poses_handlers::GetTransformPoseResponse :md5sum-) "65fe6112339c0f055bdcec45f6729881")
(setf (get niryo_robot_poses_handlers::GetTransformPoseResponse :datatype-) "niryo_robot_poses_handlers/GetTransformPoseResponse")
(setf (get niryo_robot_poses_handlers::GetTransformPoseResponse :definition-)
      "string source_frame
string local_frame

geometry_msgs/Point position
niryo_robot_msgs/RPY rpy

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
---
int32 status
string message
geometry_msgs/Point position
niryo_robot_msgs/RPY rpy

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
")



(provide :niryo_robot_poses_handlers/GetTransformPose "65fe6112339c0f055bdcec45f6729881")


