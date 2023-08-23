; Auto-generated. Do not edit!


(cl:in-package can_driver-msg)


;//! \htmlinclude StepperArrayMotorHardwareStatus.msg.html

(cl:defclass <StepperArrayMotorHardwareStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motors_hw_status
    :reader motors_hw_status
    :initarg :motors_hw_status
    :type (cl:vector can_driver-msg:StepperMotorHardwareStatus)
   :initform (cl:make-array 0 :element-type 'can_driver-msg:StepperMotorHardwareStatus :initial-element (cl:make-instance 'can_driver-msg:StepperMotorHardwareStatus))))
)

(cl:defclass StepperArrayMotorHardwareStatus (<StepperArrayMotorHardwareStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperArrayMotorHardwareStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperArrayMotorHardwareStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_driver-msg:<StepperArrayMotorHardwareStatus> is deprecated: use can_driver-msg:StepperArrayMotorHardwareStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StepperArrayMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:header-val is deprecated.  Use can_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motors_hw_status-val :lambda-list '(m))
(cl:defmethod motors_hw_status-val ((m <StepperArrayMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:motors_hw_status-val is deprecated.  Use can_driver-msg:motors_hw_status instead.")
  (motors_hw_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperArrayMotorHardwareStatus>) ostream)
  "Serializes a message object of type '<StepperArrayMotorHardwareStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motors_hw_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motors_hw_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperArrayMotorHardwareStatus>) istream)
  "Deserializes a message object of type '<StepperArrayMotorHardwareStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motors_hw_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motors_hw_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'can_driver-msg:StepperMotorHardwareStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperArrayMotorHardwareStatus>)))
  "Returns string type for a message object of type '<StepperArrayMotorHardwareStatus>"
  "can_driver/StepperArrayMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperArrayMotorHardwareStatus)))
  "Returns string type for a message object of type 'StepperArrayMotorHardwareStatus"
  "can_driver/StepperArrayMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperArrayMotorHardwareStatus>)))
  "Returns md5sum for a message object of type '<StepperArrayMotorHardwareStatus>"
  "527754ca44ac72feb8c35db3c9254b4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperArrayMotorHardwareStatus)))
  "Returns md5sum for a message object of type 'StepperArrayMotorHardwareStatus"
  "527754ca44ac72feb8c35db3c9254b4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperArrayMotorHardwareStatus>)))
  "Returns full string definition for message of type '<StepperArrayMotorHardwareStatus>"
  (cl:format cl:nil "std_msgs/Header header~%can_driver/StepperMotorHardwareStatus[] motors_hw_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: can_driver/StepperMotorHardwareStatus~%niryo_robot_msgs/MotorHeader motor_identity~%~%string firmware_version~%int32 temperature~%int32 voltage~%int32 error~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperArrayMotorHardwareStatus)))
  "Returns full string definition for message of type 'StepperArrayMotorHardwareStatus"
  (cl:format cl:nil "std_msgs/Header header~%can_driver/StepperMotorHardwareStatus[] motors_hw_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: can_driver/StepperMotorHardwareStatus~%niryo_robot_msgs/MotorHeader motor_identity~%~%string firmware_version~%int32 temperature~%int32 voltage~%int32 error~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperArrayMotorHardwareStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motors_hw_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperArrayMotorHardwareStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperArrayMotorHardwareStatus
    (cl:cons ':header (header msg))
    (cl:cons ':motors_hw_status (motors_hw_status msg))
))
