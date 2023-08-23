;; Auto-generated. Do not edit!


(when (boundp 'ttl_driver::ArrayMotorHardwareStatus)
  (if (not (find-package "TTL_DRIVER"))
    (make-package "TTL_DRIVER"))
  (shadow 'ArrayMotorHardwareStatus (find-package "TTL_DRIVER")))
(unless (find-package "TTL_DRIVER::ARRAYMOTORHARDWARESTATUS")
  (make-package "TTL_DRIVER::ARRAYMOTORHARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ArrayMotorHardwareStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ttl_driver::ArrayMotorHardwareStatus
  :super ros::object
  :slots (_header _motors_hw_status ))

(defmethod ttl_driver::ArrayMotorHardwareStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motors_hw_status __motors_hw_status) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _motors_hw_status __motors_hw_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motors_hw_status
   (&rest __motors_hw_status)
   (if (keywordp (car __motors_hw_status))
       (send* _motors_hw_status __motors_hw_status)
     (progn
       (if __motors_hw_status (setq _motors_hw_status (car __motors_hw_status)))
       _motors_hw_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ttl_driver/MotorHardwareStatus[] _motors_hw_status
    (apply #'+ (send-all _motors_hw_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ttl_driver/MotorHardwareStatus[] _motors_hw_status
     (write-long (length _motors_hw_status) s)
     (dolist (elem _motors_hw_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ttl_driver/MotorHardwareStatus[] _motors_hw_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motors_hw_status (let (r) (dotimes (i n) (push (instance ttl_driver::MotorHardwareStatus :init) r)) r))
     (dolist (elem- _motors_hw_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ttl_driver::ArrayMotorHardwareStatus :md5sum-) "d7b82f2c3ebd12de467db5ce48b4b5c9")
(setf (get ttl_driver::ArrayMotorHardwareStatus :datatype-) "ttl_driver/ArrayMotorHardwareStatus")
(setf (get ttl_driver::ArrayMotorHardwareStatus :definition-)
      "std_msgs/Header header
ttl_driver/MotorHardwareStatus[] motors_hw_status

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
MSG: ttl_driver/MotorHardwareStatus
niryo_robot_msgs/MotorHeader motor_identity

string firmware_version
uint32 temperature
float64 voltage
uint32 error
string error_msg

================================================================================
MSG: niryo_robot_msgs/MotorHeader
uint8 motor_id

uint8 motor_type
uint8 MOTOR_TYPE_STEPPER=1
uint8 MOTOR_TYPE_XL430=2
uint8 MOTOR_TYPE_XL320=3
uint8 MOTOR_TYPE_XL330=4
uint8 MOROR_TYPE_XC430=5
uint8 MOTOR_TYPE_END_EFFECTOR=10


")



(provide :ttl_driver/ArrayMotorHardwareStatus "d7b82f2c3ebd12de467db5ce48b4b5c9")


