;; Auto-generated. Do not edit!


(when (boundp 'niryo_robot_poses_handlers::ManagePose)
  (if (not (find-package "NIRYO_ROBOT_POSES_HANDLERS"))
    (make-package "NIRYO_ROBOT_POSES_HANDLERS"))
  (shadow 'ManagePose (find-package "NIRYO_ROBOT_POSES_HANDLERS")))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSE"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSEREQUEST")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSEREQUEST"))
(unless (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSERESPONSE")
  (make-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSERESPONSE"))

(in-package "ROS")





(intern "*SAVE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSEREQUEST"))
(shadow '*SAVE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManagePoseRequest::*SAVE* 1)
(intern "*DELETE*" (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSEREQUEST"))
(shadow '*DELETE* (find-package "NIRYO_ROBOT_POSES_HANDLERS::MANAGEPOSEREQUEST"))
(defconstant niryo_robot_poses_handlers::ManagePoseRequest::*DELETE* -1)

(defun niryo_robot_poses_handlers::ManagePoseRequest-to-symbol (const)
  (cond
        ((= const 1) 'niryo_robot_poses_handlers::ManagePoseRequest::*SAVE*)
        ((= const -1) 'niryo_robot_poses_handlers::ManagePoseRequest::*DELETE*)
        (t nil)))

(defclass niryo_robot_poses_handlers::ManagePoseRequest
  :super ros::object
  :slots (_cmd _pose ))

(defmethod niryo_robot_poses_handlers::ManagePoseRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:pose __pose) (instance niryo_robot_poses_handlers::NiryoPose :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _pose __pose)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
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
    ;; int32 _cmd
    4
    ;; niryo_robot_poses_handlers/NiryoPose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; niryo_robot_poses_handlers/NiryoPose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; niryo_robot_poses_handlers/NiryoPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass niryo_robot_poses_handlers::ManagePoseResponse
  :super ros::object
  :slots (_status _message ))

(defmethod niryo_robot_poses_handlers::ManagePoseResponse
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

(defclass niryo_robot_poses_handlers::ManagePose
  :super ros::object
  :slots ())

(setf (get niryo_robot_poses_handlers::ManagePose :md5sum-) "e31af33c10c3b42aaa567ace2b43c222")
(setf (get niryo_robot_poses_handlers::ManagePose :datatype-) "niryo_robot_poses_handlers/ManagePose")
(setf (get niryo_robot_poses_handlers::ManagePose :request) niryo_robot_poses_handlers::ManagePoseRequest)
(setf (get niryo_robot_poses_handlers::ManagePose :response) niryo_robot_poses_handlers::ManagePoseResponse)

(defmethod niryo_robot_poses_handlers::ManagePoseRequest
  (:response () (instance niryo_robot_poses_handlers::ManagePoseResponse :init)))

(setf (get niryo_robot_poses_handlers::ManagePoseRequest :md5sum-) "e31af33c10c3b42aaa567ace2b43c222")
(setf (get niryo_robot_poses_handlers::ManagePoseRequest :datatype-) "niryo_robot_poses_handlers/ManagePoseRequest")
(setf (get niryo_robot_poses_handlers::ManagePoseRequest :definition-)
      "int32 cmd
int32 SAVE = 1
int32 DELETE = -1

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
---
int32 status
string message

")

(setf (get niryo_robot_poses_handlers::ManagePoseResponse :md5sum-) "e31af33c10c3b42aaa567ace2b43c222")
(setf (get niryo_robot_poses_handlers::ManagePoseResponse :datatype-) "niryo_robot_poses_handlers/ManagePoseResponse")
(setf (get niryo_robot_poses_handlers::ManagePoseResponse :definition-)
      "int32 cmd
int32 SAVE = 1
int32 DELETE = -1

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
---
int32 status
string message

")



(provide :niryo_robot_poses_handlers/ManagePose "e31af33c10c3b42aaa567ace2b43c222")


