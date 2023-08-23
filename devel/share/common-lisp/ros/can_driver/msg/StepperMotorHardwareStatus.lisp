; Auto-generated. Do not edit!


(cl:in-package can_driver-msg)


;//! \htmlinclude StepperMotorHardwareStatus.msg.html

(cl:defclass <StepperMotorHardwareStatus> (roslisp-msg-protocol:ros-message)
  ((motor_identity
    :reader motor_identity
    :initarg :motor_identity
    :type niryo_robot_msgs-msg:MotorHeader
    :initform (cl:make-instance 'niryo_robot_msgs-msg:MotorHeader))
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:string
    :initform "")
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:integer
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0))
)

(cl:defclass StepperMotorHardwareStatus (<StepperMotorHardwareStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperMotorHardwareStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperMotorHardwareStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_driver-msg:<StepperMotorHardwareStatus> is deprecated: use can_driver-msg:StepperMotorHardwareStatus instead.")))

(cl:ensure-generic-function 'motor_identity-val :lambda-list '(m))
(cl:defmethod motor_identity-val ((m <StepperMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:motor_identity-val is deprecated.  Use can_driver-msg:motor_identity instead.")
  (motor_identity m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <StepperMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:firmware_version-val is deprecated.  Use can_driver-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <StepperMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:temperature-val is deprecated.  Use can_driver-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <StepperMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:voltage-val is deprecated.  Use can_driver-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <StepperMotorHardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_driver-msg:error-val is deprecated.  Use can_driver-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperMotorHardwareStatus>) ostream)
  "Serializes a message object of type '<StepperMotorHardwareStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_identity) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_version))
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperMotorHardwareStatus>) istream)
  "Deserializes a message object of type '<StepperMotorHardwareStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_identity) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperMotorHardwareStatus>)))
  "Returns string type for a message object of type '<StepperMotorHardwareStatus>"
  "can_driver/StepperMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperMotorHardwareStatus)))
  "Returns string type for a message object of type 'StepperMotorHardwareStatus"
  "can_driver/StepperMotorHardwareStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperMotorHardwareStatus>)))
  "Returns md5sum for a message object of type '<StepperMotorHardwareStatus>"
  "dc9f2f633cce4d29f5db57dd384bcf57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperMotorHardwareStatus)))
  "Returns md5sum for a message object of type 'StepperMotorHardwareStatus"
  "dc9f2f633cce4d29f5db57dd384bcf57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperMotorHardwareStatus>)))
  "Returns full string definition for message of type '<StepperMotorHardwareStatus>"
  (cl:format cl:nil "niryo_robot_msgs/MotorHeader motor_identity~%~%string firmware_version~%int32 temperature~%int32 voltage~%int32 error~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperMotorHardwareStatus)))
  "Returns full string definition for message of type 'StepperMotorHardwareStatus"
  (cl:format cl:nil "niryo_robot_msgs/MotorHeader motor_identity~%~%string firmware_version~%int32 temperature~%int32 voltage~%int32 error~%~%================================================================================~%MSG: niryo_robot_msgs/MotorHeader~%uint8 motor_id~%~%uint8 motor_type~%uint8 MOTOR_TYPE_STEPPER=1~%uint8 MOTOR_TYPE_XL430=2~%uint8 MOTOR_TYPE_XL320=3~%uint8 MOTOR_TYPE_XL330=4~%uint8 MOROR_TYPE_XC430=5~%uint8 MOTOR_TYPE_END_EFFECTOR=10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperMotorHardwareStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_identity))
     4 (cl:length (cl:slot-value msg 'firmware_version))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperMotorHardwareStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperMotorHardwareStatus
    (cl:cons ':motor_identity (motor_identity msg))
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':error (error msg))
))
