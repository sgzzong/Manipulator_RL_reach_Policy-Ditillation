;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::GetWorkspaceMatrixPoses)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'GetWorkspaceMatrixPoses (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEMATRIXPOSES")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEMATRIXPOSES"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEMATRIXPOSESREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEMATRIXPOSESREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEMATRIXPOSESRESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::GETWORKSPACEMATRIXPOSESRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest
  :super ros::object
  :slots (_name ))

(defmethod niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest
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

(defclass niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse
  :super ros::object
  :slots (_status _message _matrix_position _matrix_orientation ))

(defmethod niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    ((:matrix_position __matrix_position) ())
    ((:matrix_orientation __matrix_orientation) ())
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _matrix_position __matrix_position)
   (setq _matrix_orientation __matrix_orientation)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:matrix_position
   (&rest __matrix_position)
   (if (keywordp (car __matrix_position))
       (send* _matrix_position __matrix_position)
     (progn
       (if __matrix_position (setq _matrix_position (car __matrix_position)))
       _matrix_position)))
  (:matrix_orientation
   (&rest __matrix_orientation)
   (if (keywordp (car __matrix_orientation))
       (send* _matrix_orientation __matrix_orientation)
     (progn
       (if __matrix_orientation (setq _matrix_orientation (car __matrix_orientation)))
       _matrix_orientation)))
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Point[] _matrix_position
    (apply #'+ (send-all _matrix_position :serialization-length)) 4
    ;; geometry_msgs/Quaternion[] _matrix_orientation
    (apply #'+ (send-all _matrix_orientation :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Point[] _matrix_position
     (write-long (length _matrix_position) s)
     (dolist (elem _matrix_position)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Quaternion[] _matrix_orientation
     (write-long (length _matrix_orientation) s)
     (dolist (elem _matrix_orientation)
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
   ;; geometry_msgs/Point[] _matrix_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _matrix_position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Quaternion[] _matrix_orientation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix_orientation (let (r) (dotimes (i n) (push (instance geometry_msgs::Quaternion :init) r)) r))
     (dolist (elem- _matrix_orientation)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::GetWorkspaceMatrixPoses
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPoses :md5sum-) "de911ebce11ce8c8baf76b4fe50746b0")
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPoses :datatype-) "niryo_robot_poses_handlers/GetWorkspaceMatrixPoses")
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPoses :request) niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest)
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPoses :response) niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse)

(defmethod niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest
  (:response () (instance niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse :init)))

(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest :md5sum-) "de911ebce11ce8c8baf76b4fe50746b0")
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest :datatype-) "niryo_robot_poses_handlers/GetWorkspaceMatrixPosesRequest")
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPosesRequest :definition-)
      "string name
---
int32 status
string message
geometry_msgs/Point[] matrix_position
geometry_msgs/Quaternion[] matrix_orientation

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
")

(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse :md5sum-) "de911ebce11ce8c8baf76b4fe50746b0")
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse :datatype-) "niryo_robot_poses_handlers/GetWorkspaceMatrixPosesResponse")
(setf (get niryo_robot_poses_handlers::GetWorkspaceMatrixPosesResponse :definition-)
      "string name
---
int32 status
string message
geometry_msgs/Point[] matrix_position
geometry_msgs/Quaternion[] matrix_orientation

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
")



(provide :niryo_robot_poses_handlers/GetWorkspaceMatrixPoses "de911ebce11ce8c8baf76b4fe50746b0")


