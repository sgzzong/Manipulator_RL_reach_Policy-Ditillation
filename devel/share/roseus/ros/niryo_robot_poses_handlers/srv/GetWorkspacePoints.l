;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetWorkspacePoints)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetWorkspacePoints (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEPOINTS")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEPOINTS"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEPOINTSREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEPOINTSREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEPOINTSRESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEPOINTSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_robot_poses_handlers::GetWorkspacePointsRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_poses_handlers::GetWorkspacePointsRequest
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

(defclass niryo_robot_poses_handlers::GetWorkspacePointsResponse
  :super ros::object
  :slots (_status _message _points ))

(defmethod niryo_robot_poses_handlers::GetWorkspacePointsResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:points __points) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _points __points)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetWorkspacePoints
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetWorkspacePoints :md5sum-) "38b560a94a2a6fbb8b21cf6c4a834e01")
(setf (get niryo_robot_poses_handlers::GetWorkspacePoints :datatype-) "niryo_robot_poses_handlers/GetWorkspacePoints")
(setf (get niryo_robot_poses_handlers::GetWorkspacePoints :request) niryo_robot_poses_handlers::GetWorkspacePointsRequest)
(setf (get niryo_robot_poses_handlers::GetWorkspacePoints :response) niryo_robot_poses_handlers::GetWorkspacePointsResponse)

(defmethod niryo_robot_poses_handlers::GetWorkspacePointsRequest
  (:response () (instance niryo_robot_poses_handlers::GetWorkspacePointsResponse :init)))

(setf (get niryo_robot_poses_handlers::GetWorkspacePointsRequest :md5sum-) "38b560a94a2a6fbb8b21cf6c4a834e01")
(setf (get niryo_robot_poses_handlers::GetWorkspacePointsRequest :datatype-) "niryo_robot_poses_handlers/GetWorkspacePointsRequest")
(setf (get niryo_robot_poses_handlers::GetWorkspacePointsRequest :definition-)
      "string name
---
int32 status
string message
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get niryo_robot_poses_handlers::GetWorkspacePointsResponse :md5sum-) "38b560a94a2a6fbb8b21cf6c4a834e01")
(setf (get niryo_robot_poses_handlers::GetWorkspacePointsResponse :datatype-) "niryo_robot_poses_handlers/GetWorkspacePointsResponse")
(setf (get niryo_robot_poses_handlers::GetWorkspacePointsResponse :definition-)
      "string name
---
int32 status
string message
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :niryo_robot_poses_handlers/GetWorkspacePoints "38b560a94a2a6fbb8b21cf6c4a834e01")


